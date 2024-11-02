package com.android.systemui.biometrics;

import com.android.systemui.shade.ShadeExpansionChangeEvent;
import com.android.systemui.shade.ShadeExpansionListener;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class UdfpsAnimationViewController$shadeExpansionListener$1 implements ShadeExpansionListener {
    public final /* synthetic */ UdfpsAnimationView $view;
    public final /* synthetic */ UdfpsAnimationViewController this$0;

    public UdfpsAnimationViewController$shadeExpansionListener$1(UdfpsAnimationViewController udfpsAnimationViewController, UdfpsAnimationView udfpsAnimationView) {
        this.this$0 = udfpsAnimationViewController;
        this.$view = udfpsAnimationView;
    }

    @Override // com.android.systemui.shade.ShadeExpansionListener
    public final void onPanelExpansionChanged(ShadeExpansionChangeEvent shadeExpansionChangeEvent) {
        boolean z;
        boolean z2 = shadeExpansionChangeEvent.expanded;
        float f = shadeExpansionChangeEvent.fraction;
        if (z2 && f > 0.0f) {
            z = true;
        } else {
            z = false;
        }
        UdfpsAnimationViewController udfpsAnimationViewController = this.this$0;
        udfpsAnimationViewController.notificationShadeVisible = z;
        UdfpsAnimationView udfpsAnimationView = this.$view;
        udfpsAnimationView.mNotificationShadeExpansion = f;
        udfpsAnimationView.updateAlpha();
        udfpsAnimationViewController.updatePauseAuth();
    }
}
