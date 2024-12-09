package com.sec.internal.ims.servicemodules.im.strategy;

import android.content.Context;
import com.sec.ims.options.Capabilities;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.options.CapabilityConstants;
import com.sec.internal.ims.servicemodules.im.ImConfig;
import com.sec.internal.ims.util.ChatbotUriUtil;
import com.sec.internal.log.IMSLog;
import java.util.Set;

/* loaded from: classes.dex */
public class EmeiaUPStrategy extends DefaultUPMnoStrategy {
    private static final String TAG = "EmeiaUPStrategy";

    public EmeiaUPStrategy(Context context, int i) {
        super(context, i);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isFTViaHttp(ImConfig imConfig, Set<ImsUri> set, ChatData.ChatType chatType) {
        return imConfig.getFtDefaultMech() == ImConstants.FtMech.HTTP && isFtHttpRegistered() && (ChatData.ChatType.isGroupChatIdBasedGroupChat(chatType) || checkFtHttpCapability(set) || checkUserAvailableOffline(set));
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultUPMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean needCapabilitiesUpdate(CapabilityConstants.CapExResult capExResult, Capabilities capabilities, long j, long j2) {
        if (capabilities == null || capExResult == CapabilityConstants.CapExResult.USER_NOT_FOUND) {
            IMSLog.i(TAG, this.mPhoneId, "needCapabilitiesUpdate: Capability is null");
            return true;
        }
        if (capExResult != CapabilityConstants.CapExResult.UNCLASSIFIED_ERROR && capExResult != CapabilityConstants.CapExResult.FORBIDDEN_403) {
            return capExResult != CapabilityConstants.CapExResult.FAILURE;
        }
        IMSLog.i(TAG, this.mPhoneId, "needCapabilitiesUpdate: do not change anything");
        return false;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultUPMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public long updateAvailableFeatures(Capabilities capabilities, long j, CapabilityConstants.CapExResult capExResult) {
        int i;
        if (capabilities == null) {
            IMSLog.i(TAG, this.mPhoneId, "updateAvailableFeatures: capex is null.");
            return j;
        }
        if (capExResult == CapabilityConstants.CapExResult.USER_UNAVAILABLE) {
            if (capabilities.isAvailable() || ChatbotUriUtil.hasUriBotPlatform(capabilities.getUri(), this.mPhoneId)) {
                i = Capabilities.FEATURE_OFFLINE_RCS_USER;
            } else {
                i = Capabilities.FEATURE_NON_RCS_USER;
            }
            j = i;
        }
        IMSLog.i(TAG, this.mPhoneId, "updateAvailableFeatures:" + capabilities + ", mAvailableFeatures " + j);
        return j;
    }
}
