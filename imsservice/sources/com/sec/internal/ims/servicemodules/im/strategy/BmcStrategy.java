package com.sec.internal.ims.servicemodules.im.strategy;

import android.content.Context;
import com.sec.ims.options.Capabilities;
import com.sec.ims.options.CapabilityRefreshType;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.options.CapabilityConstants;
import com.sec.internal.constants.ims.servicemodules.presence.PresenceResponse;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import com.sec.internal.log.IMSLog;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class BmcStrategy extends DefaultRCSMnoStrategy {
    private static final String TAG = "BmcStrategy";

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public long getThrottledDelay(long j) {
        return 3L;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isPresenceReadyToRequest(boolean z, boolean z2) {
        return z && !z2;
    }

    public BmcStrategy(Context context, int i) {
        super(context, i);
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
    public boolean isCapabilityValidUri(ImsUri imsUri) {
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
        IMSLog.s(TAG, "forceRefreshCapability: uris " + set);
        if (z) {
            Iterator<ImsUri> it = set.iterator();
            while (it.hasNext()) {
                capDiscModule.getCapabilities(it.next().getMsisdn(), Capabilities.FEATURE_FT_HTTP | Capabilities.FEATURE_CHAT_CPM, i);
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean needRefresh(Capabilities capabilities, CapabilityRefreshType capabilityRefreshType, long j, long j2, long j3, long j4) {
        return needRefresh(capabilities, capabilityRefreshType, j, j3);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean needCapabilitiesUpdate(CapabilityConstants.CapExResult capExResult, Capabilities capabilities, long j, long j2) {
        if (capabilities == null || capExResult == CapabilityConstants.CapExResult.USER_NOT_FOUND) {
            IMSLog.i(TAG, this.mPhoneId, "needCapabilitiesUpdate: Capability is null");
            return true;
        }
        if (capExResult == CapabilityConstants.CapExResult.UNCLASSIFIED_ERROR) {
            IMSLog.i(TAG, this.mPhoneId, "needCapabilitiesUpdate: UNCLASSIFIED_ERROR. do not change anything");
            return false;
        }
        if (capabilities.getFeature() != Capabilities.FEATURE_NOT_UPDATED) {
            return capExResult != CapabilityConstants.CapExResult.FAILURE;
        }
        IMSLog.i(TAG, this.mPhoneId, "needCapabilitiesUpdate: Capability is not_updated");
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isCloseSessionNeeded(ImError imError) {
        return imError.isOneOf(ImError.MSRP_ACTION_NOT_ALLOWED, ImError.REMOTE_PARTY_DECLINED);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public PresenceResponse.PresenceStatusCode handlePresenceFailure(PresenceResponse.PresenceFailureReason presenceFailureReason, boolean z) {
        if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.USER_NOT_FOUND, PresenceResponse.PresenceFailureReason.METHOD_NOT_ALLOWED, PresenceResponse.PresenceFailureReason.USER_NOT_REGISTERED, PresenceResponse.PresenceFailureReason.USER_NOT_PROVISIONED, PresenceResponse.PresenceFailureReason.FORBIDDEN)) {
            return PresenceResponse.PresenceStatusCode.PRESENCE_NO_SUBSCRIBE;
        }
        if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.INTERVAL_TOO_SHORT, PresenceResponse.PresenceFailureReason.INVALID_REQUEST, PresenceResponse.PresenceFailureReason.REQUEST_TIMEOUT_RETRY, PresenceResponse.PresenceFailureReason.CONDITIONAL_REQUEST_FAILED)) {
            return PresenceResponse.PresenceStatusCode.PRESENCE_REQUIRE_FULL_PUBLISH;
        }
        return PresenceResponse.PresenceStatusCode.PRESENCE_REQUIRE_RETRY_PUBLISH;
    }
}
