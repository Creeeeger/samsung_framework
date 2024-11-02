package com.android.systemui.dreams.callbacks;

import android.util.Log;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.dreams.DreamOverlayStateController;
import com.android.systemui.shared.condition.Monitor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AssistantAttentionCallback implements Monitor.Callback {
    public final DreamOverlayStateController mStateController;

    public AssistantAttentionCallback(DreamOverlayStateController dreamOverlayStateController) {
        this.mStateController = dreamOverlayStateController;
    }

    @Override // com.android.systemui.shared.condition.Monitor.Callback
    public final void onConditionsChanged(boolean z) {
        int i;
        if (Log.isLoggable("AssistAttentionCallback", 3)) {
            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("onConditionChanged:", z, "AssistAttentionCallback");
        }
        DreamOverlayStateController dreamOverlayStateController = this.mStateController;
        dreamOverlayStateController.getClass();
        if (z) {
            i = 2;
        } else {
            i = 1;
        }
        dreamOverlayStateController.modifyState(i, 16);
    }
}
