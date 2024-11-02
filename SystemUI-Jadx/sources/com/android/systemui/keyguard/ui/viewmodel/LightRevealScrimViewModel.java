package com.android.systemui.keyguard.ui.viewmodel;

import com.android.systemui.keyguard.domain.interactor.LightRevealScrimInteractor;
import com.android.systemui.keyguard.domain.interactor.LightRevealScrimInteractor$special$$inlined$map$1;
import kotlinx.coroutines.flow.SafeFlow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LightRevealScrimViewModel {
    public final SafeFlow lightRevealEffect;
    public final LightRevealScrimInteractor$special$$inlined$map$1 revealAmount;

    public LightRevealScrimViewModel(LightRevealScrimInteractor lightRevealScrimInteractor) {
        this.lightRevealEffect = lightRevealScrimInteractor.lightRevealEffect;
        this.revealAmount = lightRevealScrimInteractor.revealAmount;
    }
}
