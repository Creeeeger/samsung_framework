package com.sec.internal.ims.servicemodules.im.strategy;

import android.content.Context;
import com.sec.internal.constants.ims.servicemodules.presence.PresenceResponse;

/* loaded from: classes.dex */
public class UsccStrategy extends DefaultRCSMnoStrategy {
    public UsccStrategy(Context context, int i) {
        super(context, i);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public PresenceResponse.PresenceStatusCode handlePresenceFailure(PresenceResponse.PresenceFailureReason presenceFailureReason, boolean z) {
        if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.USER_NOT_FOUND, PresenceResponse.PresenceFailureReason.TEMPORARILY_UNAVAILABLE)) {
            return PresenceResponse.PresenceStatusCode.PRESENCE_NOT_FOUND;
        }
        return PresenceResponse.PresenceStatusCode.NONE;
    }
}
