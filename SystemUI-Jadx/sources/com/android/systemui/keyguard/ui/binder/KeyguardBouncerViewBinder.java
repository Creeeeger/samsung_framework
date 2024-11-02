package com.android.systemui.keyguard.ui.binder;

import android.view.ViewGroup;
import com.android.keyguard.KeyguardSecSecurityContainerController;
import com.android.keyguard.dagger.KeyguardBouncerComponent;
import com.android.systemui.keyguard.ui.viewmodel.KeyguardBouncerViewModel;
import com.android.systemui.keyguard.ui.viewmodel.PrimaryBouncerToGoneTransitionViewModel;
import com.android.systemui.lifecycle.RepeatWhenAttachedKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardBouncerViewBinder {
    static {
        new KeyguardBouncerViewBinder();
    }

    private KeyguardBouncerViewBinder() {
    }

    public static final void bind(ViewGroup viewGroup, KeyguardBouncerViewModel keyguardBouncerViewModel, PrimaryBouncerToGoneTransitionViewModel primaryBouncerToGoneTransitionViewModel, KeyguardBouncerComponent.Factory factory) {
        KeyguardSecSecurityContainerController securityContainerController = factory.create(viewGroup).getSecurityContainerController();
        securityContainerController.init();
        RepeatWhenAttachedKt.repeatWhenAttached$default(viewGroup, new KeyguardBouncerViewBinder$bind$1(keyguardBouncerViewModel, new KeyguardBouncerViewBinder$bind$delegate$1(securityContainerController), viewGroup, securityContainerController, primaryBouncerToGoneTransitionViewModel, null));
    }
}
