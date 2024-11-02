package com.android.systemui.dreams.touch.scrim;

import com.android.systemui.shade.ShadeExpansionChangeEvent;
import com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BouncerScrimController implements ScrimController {
    public final StatusBarKeyguardViewManager mStatusBarKeyguardViewManager;

    public BouncerScrimController(StatusBarKeyguardViewManager statusBarKeyguardViewManager) {
        this.mStatusBarKeyguardViewManager = statusBarKeyguardViewManager;
    }

    @Override // com.android.systemui.dreams.touch.scrim.ScrimController
    public final void expand(ShadeExpansionChangeEvent shadeExpansionChangeEvent) {
        this.mStatusBarKeyguardViewManager.onPanelExpansionChanged(shadeExpansionChangeEvent);
    }

    @Override // com.android.systemui.dreams.touch.scrim.ScrimController
    public final void reset() {
        this.mStatusBarKeyguardViewManager.reset(false);
    }

    @Override // com.android.systemui.dreams.touch.scrim.ScrimController
    public final void show() {
        this.mStatusBarKeyguardViewManager.showPrimaryBouncer(false);
    }
}
