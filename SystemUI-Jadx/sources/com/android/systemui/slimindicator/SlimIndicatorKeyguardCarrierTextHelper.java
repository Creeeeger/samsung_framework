package com.android.systemui.slimindicator;

import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.keyguard.CarrierText;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SlimIndicatorKeyguardCarrierTextHelper implements SlimIndicatorViewSubscriber {
    public CarrierText mCarrierTextView;
    public int mOriginalVisibility;
    public final SlimIndicatorViewMediator mSlimIndicatorViewMediator;

    public SlimIndicatorKeyguardCarrierTextHelper(SlimIndicatorViewMediator slimIndicatorViewMediator) {
        this.mSlimIndicatorViewMediator = slimIndicatorViewMediator;
    }

    @Override // com.android.systemui.slimindicator.SlimIndicatorViewSubscriber
    public final void updateQuickStarStyle() {
        RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("updateQuickStarStyle() visibility:"), this.mOriginalVisibility, "SlimIndicatorKeyguardCarrierTextHelper");
        CarrierText carrierText = this.mCarrierTextView;
        if (carrierText == null) {
            return;
        }
        carrierText.setVisibility(this.mOriginalVisibility);
    }
}
