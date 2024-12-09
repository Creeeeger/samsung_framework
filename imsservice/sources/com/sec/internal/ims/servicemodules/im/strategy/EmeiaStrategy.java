package com.sec.internal.ims.servicemodules.im.strategy;

import android.content.Context;
import com.sec.ims.options.Capabilities;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.options.CapabilityConstants;
import com.sec.internal.ims.servicemodules.im.ImConfig;
import com.sec.internal.log.IMSLog;
import java.util.Set;

/* loaded from: classes.dex */
public class EmeiaStrategy extends DefaultRCSMnoStrategy {
    private static final String TAG = "EmeiaStrategy";

    public EmeiaStrategy(Context context, int i) {
        super(context, i);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isFTViaHttp(ImConfig imConfig, Set<ImsUri> set, ChatData.ChatType chatType) {
        return imConfig.getFtDefaultMech() == ImConstants.FtMech.HTTP && isFtHttpRegistered() && (ChatData.ChatType.isGroupChatIdBasedGroupChat(chatType) || checkFtHttpCapability(set) || checkUserAvailableOffline(set));
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public long updateAvailableFeatures(Capabilities capabilities, long j, CapabilityConstants.CapExResult capExResult) {
        String str = TAG;
        IMSLog.i(str, this.mPhoneId, "updateAvailableFeatures:" + capabilities);
        if (capabilities == null) {
            return j;
        }
        if (capExResult == CapabilityConstants.CapExResult.USER_UNAVAILABLE) {
            j = capabilities.isAvailable() ? Capabilities.FEATURE_OFFLINE_RCS_USER : Capabilities.FEATURE_NON_RCS_USER;
        }
        IMSLog.i(str, this.mPhoneId, "updateAvailableFeatures: mAvailableFeatures " + j);
        return j;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean needCapabilitiesUpdate(CapabilityConstants.CapExResult capExResult, Capabilities capabilities, long j, long j2) {
        if (capabilities == null || capExResult == CapabilityConstants.CapExResult.USER_NOT_FOUND) {
            IMSLog.i(TAG, this.mPhoneId, "needCapabilitiesUpdate: Capability is null");
            return true;
        }
        if (!capExResult.isOneOf(CapabilityConstants.CapExResult.UNCLASSIFIED_ERROR, CapabilityConstants.CapExResult.FORBIDDEN_403)) {
            return capExResult != CapabilityConstants.CapExResult.FAILURE;
        }
        IMSLog.i(TAG, this.mPhoneId, "needCapabilitiesUpdate: do not change anything");
        return false;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public long updateFeatures(Capabilities capabilities, long j, CapabilityConstants.CapExResult capExResult) {
        if (capabilities == null || capabilities.hasFeature(Capabilities.FEATURE_NOT_UPDATED) || capabilities.hasFeature(Capabilities.FEATURE_NON_RCS_USER) || j == Capabilities.FEATURE_NON_RCS_USER) {
            IMSLog.i(TAG, this.mPhoneId, "updateFeatures: set features " + Capabilities.dumpFeature(j));
            return j;
        }
        if (j == Capabilities.FEATURE_NOT_UPDATED) {
            IMSLog.i(TAG, this.mPhoneId, "updateFeatures: feature is NOT_UPDATED, remains previous features " + Capabilities.dumpFeature(capabilities.getFeature()));
            return capabilities.getFeature();
        }
        IMSLog.i(TAG, this.mPhoneId, "updateFeatures: updated features " + Capabilities.dumpFeature(capabilities.getFeature() | j));
        return capabilities.getFeature() | j;
    }
}
