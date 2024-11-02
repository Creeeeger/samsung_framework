package com.android.systemui.biometrics;

import com.android.keyguard.BouncerPanelExpansionCalculator;
import com.android.systemui.shade.ShadeExpansionChangeEvent;
import com.android.systemui.shade.ShadeExpansionListener;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class UdfpsKeyguardViewControllerLegacy$shadeExpansionListener$1 implements ShadeExpansionListener {
    public final /* synthetic */ UdfpsKeyguardViewControllerLegacy this$0;

    public UdfpsKeyguardViewControllerLegacy$shadeExpansionListener$1(UdfpsKeyguardViewControllerLegacy udfpsKeyguardViewControllerLegacy) {
        this.this$0 = udfpsKeyguardViewControllerLegacy;
    }

    @Override // com.android.systemui.shade.ShadeExpansionListener
    public final void onPanelExpansionChanged(ShadeExpansionChangeEvent shadeExpansionChangeEvent) {
        UdfpsKeyguardViewControllerLegacy udfpsKeyguardViewControllerLegacy = this.this$0;
        boolean isPrimaryBouncerInTransit = udfpsKeyguardViewControllerLegacy.keyguardViewManager.isPrimaryBouncerInTransit();
        float f = shadeExpansionChangeEvent.fraction;
        if (isPrimaryBouncerInTransit) {
            f = BouncerPanelExpansionCalculator.aboutToShowBouncerProgress(f);
        }
        udfpsKeyguardViewControllerLegacy.panelExpansionFraction = f;
        udfpsKeyguardViewControllerLegacy.updateAlpha();
        udfpsKeyguardViewControllerLegacy.updatePauseAuth();
    }
}
