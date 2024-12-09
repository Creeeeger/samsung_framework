package com.sec.internal.ims.servicemodules.im.strategy;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.sec.ims.options.Capabilities;
import com.sec.ims.options.CapabilityRefreshType;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.reason.CancelReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionClosedReason;
import com.sec.internal.constants.ims.servicemodules.options.CapabilityConstants;
import com.sec.internal.constants.ims.servicemodules.presence.PresenceResponse;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.translate.MappingTranslator;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.ImConfig;
import com.sec.internal.ims.servicemodules.im.data.FtResumableOption;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.util.ChatbotUriUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import com.sec.internal.log.IMSLog;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class TmoStrategy extends DefaultRCSMnoStrategy {
    private static final String TAG = "TmoStrategy";
    private final int MAX_RETRY_COUNT;
    private final int RETRY_AFTER_MAX;
    private final ArrayList<Integer> mFtResumeRetryMOTimerList;
    private final ArrayList<Integer> mFtResumeRetryMTTimerList;
    private String mRcsPhaseVersion;
    private final HashSet<ImError> mTmoForceRefreshRemoteCapa;
    private final HashSet<ImError> mTmoRetryNeededErrorsForFt;
    private final HashSet<ImError> mTmoRetryNeededErrorsForGroupIm;
    private final HashSet<ImError> mTmoRetryNeededErrorsForIm;
    private final HashSet<ImError> mTmoRetryNeededErrors_AfterRegi;
    private final HashSet<ImError> mTmoRetryNeededFT_changecontact;
    private final HashSet<ImError> mTmoRetryNeededFT_retryafter;
    private final HashSet<ImError> mTmoRetryNeededIM_changecontact;
    private final HashSet<ImError> mTmoRetryNeededIM_retryafter;

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public long getThrottledDelay(long j) {
        return j + 3;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isDisplayBotError() {
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isDisplayWarnText() {
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isResendFTResume(boolean z) {
        return z;
    }

    public TmoStrategy(Context context, int i) {
        super(context, i);
        this.MAX_RETRY_COUNT = 1;
        this.RETRY_AFTER_MAX = 5;
        this.mTmoRetryNeededErrorsForIm = new HashSet<>();
        this.mTmoRetryNeededErrorsForGroupIm = new HashSet<>();
        this.mTmoRetryNeededIM_retryafter = new HashSet<>();
        this.mTmoRetryNeededIM_changecontact = new HashSet<>();
        this.mTmoForceRefreshRemoteCapa = new HashSet<>();
        this.mTmoRetryNeededFT_retryafter = new HashSet<>();
        this.mTmoRetryNeededFT_changecontact = new HashSet<>();
        this.mTmoRetryNeededErrorsForFt = new HashSet<>();
        this.mTmoRetryNeededErrors_AfterRegi = new HashSet<>();
        this.mFtResumeRetryMTTimerList = new ArrayList<>();
        this.mFtResumeRetryMOTimerList = new ArrayList<>();
        this.mRcsPhaseVersion = "";
        initTmoMaps();
    }

    private void initTmoMaps() {
        this.mRcsPhaseVersion = ImsRegistry.getString(this.mPhoneId, GlobalSettingsConstants.RCS.RCS_PHASE_VERSION, "");
        HashSet<ImError> hashSet = this.mTmoRetryNeededErrorsForIm;
        ImError imError = ImError.UNSUPPORTED_URI_SCHEME;
        hashSet.add(imError);
        this.mTmoRetryNeededErrorsForIm.add(ImError.NETWORK_ERROR);
        HashSet<ImError> hashSet2 = this.mTmoRetryNeededErrorsForIm;
        ImError imError2 = ImError.BAD_GATEWAY;
        hashSet2.add(imError2);
        this.mTmoRetryNeededErrorsForIm.add(ImError.MSRP_TRANSACTION_TIMED_OUT);
        HashSet<ImError> hashSet3 = this.mTmoRetryNeededErrorsForIm;
        ImError imError3 = ImError.MSRP_DO_NOT_SEND_THIS_MESSAGE;
        hashSet3.add(imError3);
        HashSet<ImError> hashSet4 = this.mTmoRetryNeededErrorsForIm;
        ImError imError4 = ImError.MSRP_SESSION_DOES_NOT_EXIST;
        hashSet4.add(imError4);
        HashSet<ImError> hashSet5 = this.mTmoRetryNeededErrorsForIm;
        ImError imError5 = ImError.REQUEST_PENDING;
        hashSet5.add(imError5);
        HashSet<ImError> hashSet6 = this.mTmoRetryNeededErrorsForIm;
        ImError imError6 = ImError.FORBIDDEN_RETRY_FALLBACK;
        hashSet6.add(imError6);
        HashSet<ImError> hashSet7 = this.mTmoRetryNeededErrorsForIm;
        ImError imError7 = ImError.TRANSACTION_DOESNT_EXIST;
        hashSet7.add(imError7);
        HashSet<ImError> hashSet8 = this.mTmoRetryNeededErrorsForIm;
        ImError imError8 = ImError.TRANSACTION_DOESNT_EXIST_RETRY_FALLBACK;
        hashSet8.add(imError8);
        HashSet<ImError> hashSet9 = this.mTmoRetryNeededErrorsForIm;
        ImError imError9 = ImError.LOOP_DETECTED;
        hashSet9.add(imError9);
        HashSet<ImError> hashSet10 = this.mTmoRetryNeededErrorsForIm;
        ImError imError10 = ImError.TOO_MANY_HOPS;
        hashSet10.add(imError10);
        HashSet<ImError> hashSet11 = this.mTmoRetryNeededErrorsForIm;
        ImError imError11 = ImError.REMOTE_TEMPORARILY_UNAVAILABLE;
        hashSet11.add(imError11);
        this.mTmoRetryNeededErrorsForGroupIm.add(imError4);
        this.mTmoRetryNeededErrorsForGroupIm.add(ImError.MSRP_ACTION_NOT_ALLOWED);
        this.mTmoRetryNeededErrorsForFt.add(imError6);
        this.mTmoRetryNeededErrorsForFt.add(imError);
        this.mTmoRetryNeededErrorsForFt.add(imError2);
        this.mTmoRetryNeededErrorsForFt.add(imError3);
        this.mTmoRetryNeededErrorsForFt.add(imError5);
        this.mTmoRetryNeededErrorsForFt.add(imError7);
        this.mTmoRetryNeededErrorsForFt.add(imError8);
        this.mTmoRetryNeededErrorsForFt.add(ImError.GONE);
        this.mTmoRetryNeededErrorsForFt.add(imError9);
        this.mTmoRetryNeededErrorsForFt.add(imError10);
        this.mTmoRetryNeededErrorsForFt.add(imError11);
        this.mTmoRetryNeededFT_retryafter.add(imError11);
        HashSet<ImError> hashSet12 = this.mTmoRetryNeededFT_retryafter;
        ImError imError12 = ImError.INTERNAL_SERVER_ERROR;
        hashSet12.add(imError12);
        HashSet<ImError> hashSet13 = this.mTmoRetryNeededFT_retryafter;
        ImError imError13 = ImError.SERVICE_UNAVAILABLE;
        hashSet13.add(imError13);
        HashSet<ImError> hashSet14 = this.mTmoRetryNeededFT_retryafter;
        ImError imError14 = ImError.BUSY_EVERYWHERE;
        hashSet14.add(imError14);
        this.mTmoRetryNeededIM_retryafter.add(imError11);
        this.mTmoRetryNeededIM_retryafter.add(imError12);
        this.mTmoRetryNeededIM_retryafter.add(imError13);
        this.mTmoRetryNeededIM_retryafter.add(imError14);
        HashSet<ImError> hashSet15 = this.mTmoRetryNeededIM_retryafter;
        ImError imError15 = ImError.REMOTE_USER_INVALID;
        hashSet15.add(imError15);
        HashSet<ImError> hashSet16 = this.mTmoRetryNeededFT_changecontact;
        ImError imError16 = ImError.MULTIPLE_CHOICES;
        hashSet16.add(imError16);
        HashSet<ImError> hashSet17 = this.mTmoRetryNeededFT_changecontact;
        ImError imError17 = ImError.MOVED_PERMANENTLY;
        hashSet17.add(imError17);
        HashSet<ImError> hashSet18 = this.mTmoRetryNeededFT_changecontact;
        ImError imError18 = ImError.MOVED_TEMPORARILY;
        hashSet18.add(imError18);
        HashSet<ImError> hashSet19 = this.mTmoRetryNeededFT_changecontact;
        ImError imError19 = ImError.USE_PROXY;
        hashSet19.add(imError19);
        this.mTmoRetryNeededIM_changecontact.add(imError16);
        this.mTmoRetryNeededIM_changecontact.add(imError17);
        this.mTmoRetryNeededIM_changecontact.add(imError18);
        this.mTmoRetryNeededIM_changecontact.add(imError19);
        this.mTmoForceRefreshRemoteCapa.add(ImError.SESSION_TIMED_OUT);
        this.mTmoForceRefreshRemoteCapa.add(imError11);
        this.mTmoForceRefreshRemoteCapa.add(imError15);
        this.mTmoRetryNeededErrors_AfterRegi.add(ImError.FORBIDDEN_NO_WARNING_HEADER);
        this.mFtResumeRetryMTTimerList.add(1);
        this.mFtResumeRetryMOTimerList.add(1);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy
    protected IMnoStrategy.StrategyResponse getStrategyResponse() {
        return getStrategyResponse(ChatData.ChatType.ONE_TO_ONE_CHAT);
    }

    private IMnoStrategy.StrategyResponse getStrategyResponse(ChatData.ChatType chatType) {
        if (ChatData.ChatType.isGroupChatIdBasedGroupChat(chatType)) {
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.DISPLAY_ERROR);
        }
        return super.getStrategyResponse();
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse handleSendingMessageFailure(ImError imError, int i, int i2, ChatData.ChatType chatType, boolean z, boolean z2) {
        if (z) {
            return handleSlmFailure(imError);
        }
        IMnoStrategy.StatusCode retryStrategy = getRetryStrategy(i, imError, i2, chatType);
        if (retryStrategy == IMnoStrategy.StatusCode.NO_RETRY) {
            return handleImFailure(imError, chatType);
        }
        return new IMnoStrategy.StrategyResponse(retryStrategy);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse handleSendingFtMsrpMessageFailure(ImError imError, int i, int i2, ChatData.ChatType chatType, boolean z) {
        IMnoStrategy.StatusCode ftMsrpRetryStrategy = getFtMsrpRetryStrategy(i, imError, i2);
        if (ftMsrpRetryStrategy == IMnoStrategy.StatusCode.NO_RETRY) {
            return handleFtFailure(imError, chatType);
        }
        return new IMnoStrategy.StrategyResponse(ftMsrpRetryStrategy);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse handleFtHttpRequestFailure(CancelReason cancelReason, ImDirection imDirection, boolean z) {
        if (imDirection == ImDirection.OUTGOING && cancelReason.equals(CancelReason.ERROR) && !z) {
            return getStrategyResponse();
        }
        return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse checkCapability(Set<ImsUri> set, long j, ChatData.ChatType chatType, boolean z) {
        IMSLog.i(TAG, this.mPhoneId, "checkCapability->features:" + j + ", isBroadcastMsg:" + z);
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
        Iterator<ImsUri> it = set.iterator();
        while (it.hasNext()) {
            String str2 = (ImsUri) it.next();
            Capabilities capabilities = capDiscModule.getCapabilities((ImsUri) str2, CapabilityRefreshType.ONLY_IF_NOT_FRESH, i);
            if (capabilities == null || !capabilities.isAvailable() || !hasOneOfFeaturesAvailable(capabilities, j)) {
                String str3 = TAG;
                int i2 = this.mPhoneId;
                StringBuilder sb = new StringBuilder();
                sb.append("checkCapability: No capabilities for ");
                sb.append((Object) ((!IMSLog.isShipBuild() || str2 == null) ? str2 : str2.toStringLimit()));
                if (capabilities == null) {
                    str = "";
                } else {
                    str = ": isAvailable=" + capabilities.isAvailable();
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

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StatusCode getRetryStrategy(int i, ImError imError, int i2, ChatData.ChatType chatType) {
        if (this.mTmoRetryNeededErrors_AfterRegi.contains(imError) && i < 4) {
            return IMnoStrategy.StatusCode.RETRY_AFTER_REGI;
        }
        if (i >= 1) {
            return IMnoStrategy.StatusCode.NO_RETRY;
        }
        if (this.mTmoRetryNeededIM_retryafter.contains(imError)) {
            if (i2 > 0 && i2 <= 5) {
                return IMnoStrategy.StatusCode.RETRY_AFTER;
            }
            return IMnoStrategy.StatusCode.NO_RETRY;
        }
        if (ChatData.ChatType.isGroupChat(chatType) && this.mTmoRetryNeededErrorsForGroupIm.contains(imError)) {
            return IMnoStrategy.StatusCode.RETRY_IMMEDIATE;
        }
        if (this.mTmoRetryNeededErrorsForIm.contains(imError)) {
            return IMnoStrategy.StatusCode.RETRY_IMMEDIATE;
        }
        if (this.mTmoRetryNeededIM_changecontact.contains(imError)) {
            return IMnoStrategy.StatusCode.NO_RETRY;
        }
        return IMnoStrategy.StatusCode.NO_RETRY;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StatusCode getFtMsrpRetryStrategy(int i, ImError imError, int i2) {
        if (this.mTmoRetryNeededFT_retryafter.contains(imError)) {
            if (i2 > 0 && i2 <= 5) {
                return IMnoStrategy.StatusCode.RETRY_AFTER;
            }
            return IMnoStrategy.StatusCode.NO_RETRY;
        }
        if (i < 1) {
            if (this.mTmoRetryNeededErrorsForFt.contains(imError)) {
                return IMnoStrategy.StatusCode.RETRY_IMMEDIATE;
            }
            if (this.mTmoRetryNeededFT_changecontact.contains(imError)) {
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
            Iterator<ImsUri> it = set.iterator();
            while (it.hasNext()) {
                capDiscModule.getCapabilities(it.next(), Capabilities.FEATURE_FT_SERVICE | Capabilities.FEATURE_CHAT_CPM, i);
            }
        } else {
            if (imError == null || !this.mTmoForceRefreshRemoteCapa.contains(imError)) {
                return;
            }
            Iterator<ImsUri> it2 = set.iterator();
            while (it2.hasNext()) {
                capDiscModule.getCapabilities(it2.next(), CapabilityRefreshType.ALWAYS_FORCE_REFRESH, i);
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public FtResumableOption getftResumableOption(CancelReason cancelReason, boolean z, ImDirection imDirection, int i) {
        if (cancelReason == null) {
            return FtResumableOption.NOTRESUMABLE;
        }
        return z ? getResumableOptionGroupFt(cancelReason, imDirection, i) : getResumableOptionSingleFt(cancelReason, imDirection);
    }

    private FtResumableOption getResumableOptionSingleFt(CancelReason cancelReason, ImDirection imDirection) {
        IMSLog.i(TAG, this.mPhoneId, "getResumableOptionSingleFt, cancelreason: " + cancelReason.getId() + " direction:" + imDirection.getId());
        FtResumableOption translateCancelReason = TMOFtCancelReasonResumableOptionCodeMap.translateCancelReason(cancelReason);
        return translateCancelReason == null ? FtResumableOption.NOTRESUMABLE : translateCancelReason;
    }

    private FtResumableOption getResumableOptionGroupFt(CancelReason cancelReason, ImDirection imDirection, int i) {
        IMSLog.i(TAG, this.mPhoneId, "getResumableOptionGroupFt, cancelreason: " + cancelReason.getId() + " direction:" + imDirection.getId() + " transferMech:" + i);
        if ((imDirection == ImDirection.INCOMING && i == 0) || cancelReason == CancelReason.CANCELED_BY_REMOTE || cancelReason == CancelReason.CANCELED_NOTIFICATION) {
            return FtResumableOption.NOTRESUMABLE;
        }
        if (cancelReason == CancelReason.CANCELED_BY_USER) {
            return FtResumableOption.MANUALLY_RESUMABLE_ONLY;
        }
        if (cancelReason == CancelReason.ERROR || cancelReason == CancelReason.DEVICE_UNREGISTERED) {
            return FtResumableOption.MANUALLY_AUTOMATICALLY_RESUMABLE;
        }
        return FtResumableOption.MANUALLY_RESUMABLE_ONLY;
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
        if (isCapCacheExpired(capabilities, j2)) {
            IMSLog.i(TAG, this.mPhoneId, "needRefresh: Capability cache is expired");
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
        if (capabilityRefreshType == CapabilityRefreshType.FORCE_REFRESH_SYNC) {
            return true;
        }
        if (capabilityRefreshType == CapabilityRefreshType.ONLY_IF_NOT_FRESH && capabilities.isExpired(j)) {
            return true;
        }
        return capabilityRefreshType == CapabilityRefreshType.ONLY_IF_NOT_FRESH_IN_MSG_CTX && capabilities.isExpired(j);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean needCapabilitiesUpdate(CapabilityConstants.CapExResult capExResult, Capabilities capabilities, long j, long j2) {
        if (capabilities == null || capExResult == CapabilityConstants.CapExResult.USER_NOT_FOUND) {
            IMSLog.i(TAG, this.mPhoneId, "needCapabilitiesUpdate: Capability is null");
            return true;
        }
        if (capExResult == CapabilityConstants.CapExResult.FAILURE) {
            return isCapCacheExpired(capabilities, j2);
        }
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean needRefresh(Capabilities capabilities, CapabilityRefreshType capabilityRefreshType, long j, long j2, long j3, long j4) {
        return needRefresh(capabilities, capabilityRefreshType, j, j3);
    }

    private boolean isCapCacheExpired(Capabilities capabilities, long j) {
        if (capabilities == null) {
            IMSLog.i(TAG, this.mPhoneId, "isCapCacheExpired: Capability is null");
            return true;
        }
        Date date = new Date();
        boolean z = date.getTime() - capabilities.getTimestamp().getTime() >= 1000 * j && j > 0;
        if (z) {
            capabilities.resetFeatures();
            IMSLog.i(TAG, this.mPhoneId, "isCapCacheExpired: " + j + " current " + date.getTime() + " timestamp " + capabilities.getTimestamp().getTime() + " diff " + (date.getTime() - capabilities.getTimestamp().getTime()));
        }
        return z;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public int getNextFileTransferAutoResumeTimer(ImDirection imDirection, int i) {
        if (imDirection != ImDirection.INCOMING || i >= this.mFtResumeRetryMTTimerList.size()) {
            return -1;
        }
        return this.mFtResumeRetryMTTimerList.get(i).intValue();
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public ImDirection convertToImDirection(String str) {
        return "Out".equals(str) ? ImDirection.OUTGOING : ImDirection.INCOMING;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy
    protected boolean checkFtHttpCapability(Set<ImsUri> set) {
        ICapabilityDiscoveryModule capDiscModule = getCapDiscModule();
        int i = this.mPhoneId;
        if (capDiscModule == null) {
            IMSLog.i(TAG, i, "checkCapability: capDiscModule is null");
            return false;
        }
        for (ImsUri imsUri : set) {
            Capabilities capabilities = capDiscModule.getCapabilities(imsUri, CapabilityRefreshType.ONLY_IF_NOT_FRESH, i);
            IMSLog.i(TAG, this.mPhoneId, "isFTViaHttp, uri = " + IMSLog.numberChecker(imsUri) + ", capx = " + capabilities);
            if (capabilities == null || !capabilities.hasFeature(Capabilities.FEATURE_FT_HTTP)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isFTViaHttp(ImConfig imConfig, Set<ImsUri> set, ChatData.ChatType chatType) {
        Uri ftHttpCsUri = imConfig.getFtHttpCsUri();
        if (ftHttpCsUri == null || TextUtils.isEmpty(ftHttpCsUri.toString()) || !isFtHttpRegistered()) {
            return false;
        }
        if (chatType == ChatData.ChatType.ONE_TO_ONE_CHAT) {
            return checkFtHttpCapability(set);
        }
        return chatType == ChatData.ChatType.REGULAR_GROUP_CHAT;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public String getFtHttpUserAgent(ImConfig imConfig) {
        return buildFTHTTPUserAgentForTMOUS() + " 3gpp-gba";
    }

    private String buildFTHTTPUserAgentForTMOUS() {
        return "UP1 " + Build.VERSION.INCREMENTAL + ' ' + new SimpleDateFormat("yyyy-MM-dd").format(new Date()) + ' ' + NSDSNamespaces.NSDSSettings.OS + ' ' + Build.VERSION.RELEASE + ' ' + Build.MODEL;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isCustomizedFeature(long j) {
        return ((long) Capabilities.FEATURE_GEO_VIA_SMS) == j;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isFTHTTPAutoResumeAndCancelPerConnectionChange() {
        return !"RCS_TMB_PHASE2".equals(this.mRcsPhaseVersion);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isCloseSessionNeeded(ImError imError) {
        return imError.isOneOf(ImError.REMOTE_PARTY_DECLINED, ImError.FORBIDDEN_NO_WARNING_HEADER, ImError.MSRP_ACTION_NOT_ALLOWED, ImError.MSRP_SESSION_DOES_NOT_EXIST, ImError.MSRP_SESSION_ON_OTHER_CONNECTION);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse handleImFailure(ImError imError, ChatData.ChatType chatType) {
        if (imError.isOneOf(ImError.REMOTE_PARTY_DECLINED, ImError.FORBIDDEN_NO_WARNING_HEADER, ImError.MSRP_ACTION_NOT_ALLOWED, ImError.MSRP_SESSION_DOES_NOT_EXIST, ImError.MSRP_SESSION_ON_OTHER_CONNECTION, ImError.OUTOFSERVICE)) {
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.DISPLAY_ERROR);
        }
        if (imError.isOneOf(ImError.GROUPCHAT_DISABLED)) {
            return new IMnoStrategy.StrategyResponse(ChatData.ChatType.isGroupChatIdBasedGroupChat(chatType) ? IMnoStrategy.StatusCode.DISPLAY_ERROR : IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY);
        }
        if (ChatData.ChatType.isGroupChatIdBasedGroupChat(chatType)) {
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.DISPLAY_ERROR);
        }
        return getStrategyResponse();
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse handleFtFailure(ImError imError, ChatData.ChatType chatType) {
        if (imError.isOneOf(ImError.REMOTE_PARTY_DECLINED, ImError.FORBIDDEN_NO_WARNING_HEADER, ImError.BUSY_HERE, ImError.REMOTE_PARTY_CANCELED)) {
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.DISPLAY_ERROR);
        }
        if (imError.isOneOf(ImError.DEVICE_UNREGISTERED)) {
            return new IMnoStrategy.StrategyResponse(ChatData.ChatType.isGroupChatIdBasedGroupChat(chatType) ? IMnoStrategy.StatusCode.DISPLAY_ERROR : IMnoStrategy.StatusCode.NONE);
        }
        if (ChatData.ChatType.isGroupChatIdBasedGroupChat(chatType)) {
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.DISPLAY_ERROR);
        }
        return getStrategyResponse();
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public PresenceResponse.PresenceStatusCode handlePresenceFailure(PresenceResponse.PresenceFailureReason presenceFailureReason, boolean z) {
        if (z) {
            if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.USER_NOT_REGISTERED, PresenceResponse.PresenceFailureReason.USER_NOT_PROVISIONED, PresenceResponse.PresenceFailureReason.FORBIDDEN)) {
                return PresenceResponse.PresenceStatusCode.PRESENCE_RE_REGISTRATION;
            }
            if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.INTERVAL_TOO_SHORT, PresenceResponse.PresenceFailureReason.INVALID_REQUEST, PresenceResponse.PresenceFailureReason.CONDITIONAL_REQUEST_FAILED, PresenceResponse.PresenceFailureReason.UNSUPPORTED_MEDIA_TYPE, PresenceResponse.PresenceFailureReason.BAD_EVENT)) {
                return PresenceResponse.PresenceStatusCode.PRESENCE_REQUIRE_FULL_PUBLISH;
            }
            if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.USER_NOT_FOUND, PresenceResponse.PresenceFailureReason.ENTITY_TOO_LARGE, PresenceResponse.PresenceFailureReason.TEMPORARILY_UNAVAILABLE, PresenceResponse.PresenceFailureReason.BUSY_HERE, PresenceResponse.PresenceFailureReason.SERVER_INTERNAL_ERROR, PresenceResponse.PresenceFailureReason.SERVICE_UNAVAILABLE, PresenceResponse.PresenceFailureReason.BUSY_EVERYWHERE, PresenceResponse.PresenceFailureReason.DECLINE)) {
                return PresenceResponse.PresenceStatusCode.PRESENCE_REQUIRE_RETRY_PUBLISH_AFTER;
            }
            return PresenceResponse.PresenceStatusCode.PRESENCE_REQUIRE_RETRY_PUBLISH;
        }
        if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.USER_NOT_FOUND, PresenceResponse.PresenceFailureReason.METHOD_NOT_ALLOWED, PresenceResponse.PresenceFailureReason.USER_NOT_REGISTERED, PresenceResponse.PresenceFailureReason.USER_NOT_PROVISIONED, PresenceResponse.PresenceFailureReason.FORBIDDEN)) {
            return PresenceResponse.PresenceStatusCode.PRESENCE_NO_SUBSCRIBE;
        }
        return PresenceResponse.PresenceStatusCode.NONE;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse handleFtMsrpInterruption(ImError imError) {
        if (imError.isOneOf(ImError.MSRP_ACTION_NOT_ALLOWED, ImError.MSRP_SESSION_DOES_NOT_EXIST, ImError.MSRP_SESSION_ON_OTHER_CONNECTION, ImError.NETWORK_ERROR, ImError.DEVICE_UNREGISTERED, ImError.REMOTE_PARTY_CANCELED, ImError.SESSION_TIMED_OUT, ImError.SERVICE_UNAVAILABLE, ImError.NORMAL_RELEASE)) {
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.DISPLAY_ERROR);
        }
        return getStrategyResponse();
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse handleAttachFileFailure(ImSessionClosedReason imSessionClosedReason) {
        if (isSlmEnabled()) {
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.FALLBACK_TO_SLM);
        }
        return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isDeleteSessionSupported(ChatData.ChatType chatType, int i) {
        return chatType == ChatData.ChatType.REGULAR_GROUP_CHAT;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean checkSlmFileType(String str) {
        return !TextUtils.isEmpty(str) && (str.contains(CallConstants.ComposerData.IMAGE) || str.contains(SipMsg.FEATURE_TAG_MMTEL_VIDEO) || str.contains("audio") || "text/x-vCard".equalsIgnoreCase(str) || "text/vcard".equalsIgnoreCase(str) || "text/x-vCalendar".equalsIgnoreCase(str) || "text/x-vNote".equalsIgnoreCase(str) || "text/x-vtodo".equalsIgnoreCase(str) || "application/ogg".equalsIgnoreCase(str));
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse getUploadedFileFallbackSLMTech() {
        return isSlmEnabled() ? new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.FALLBACK_TO_SLM_FILE) : new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY);
    }

    public static class TMOFtCancelReasonResumableOptionCodeMap {
        private static final MappingTranslator<CancelReason, FtResumableOption> mTMOFtResumableOptionTranslator;

        static {
            MappingTranslator.Builder builder = new MappingTranslator.Builder();
            CancelReason cancelReason = CancelReason.UNKNOWN;
            FtResumableOption ftResumableOption = FtResumableOption.MANUALLY_RESUMABLE_ONLY;
            MappingTranslator.Builder map = builder.map(cancelReason, ftResumableOption).map(CancelReason.CANCELED_BY_USER, ftResumableOption);
            CancelReason cancelReason2 = CancelReason.CANCELED_BY_REMOTE;
            FtResumableOption ftResumableOption2 = FtResumableOption.NOTRESUMABLE;
            mTMOFtResumableOptionTranslator = map.map(cancelReason2, ftResumableOption2).map(CancelReason.CANCELED_BY_SYSTEM, ftResumableOption2).map(CancelReason.REJECTED_BY_REMOTE, ftResumableOption2).map(CancelReason.TIME_OUT, ftResumableOption).map(CancelReason.REMOTE_TEMPORARILY_UNAVAILABLE, ftResumableOption).map(CancelReason.ERROR, ftResumableOption).map(CancelReason.CONNECTION_RELEASED, ftResumableOption).map(CancelReason.DEVICE_UNREGISTERED, FtResumableOption.MANUALLY_AUTOMATICALLY_RESUMABLE).map(CancelReason.NOT_AUTHORIZED, ftResumableOption2).map(CancelReason.FORBIDDEN_NO_RETRY_FALLBACK, ftResumableOption2).map(CancelReason.MSRP_SESSION_ERROR_NO_RESUME, ftResumableOption2).map(CancelReason.CANCELED_NOTIFICATION, ftResumableOption2).buildTranslator();
        }

        public static FtResumableOption translateCancelReason(CancelReason cancelReason) {
            MappingTranslator<CancelReason, FtResumableOption> mappingTranslator = mTMOFtResumableOptionTranslator;
            if (mappingTranslator.isTranslationDefined(cancelReason)) {
                return mappingTranslator.translate(cancelReason);
            }
            return FtResumableOption.MANUALLY_RESUMABLE_ONLY;
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public ImSessionClosedReason handleSessionFailure(ImError imError, boolean z) {
        if (z && imError == ImError.FORBIDDEN_SERVICE_NOT_AUTHORISED) {
            return ImSessionClosedReason.KICKED_OUT_BY_LEADER;
        }
        return ImSessionClosedReason.NONE;
    }
}
