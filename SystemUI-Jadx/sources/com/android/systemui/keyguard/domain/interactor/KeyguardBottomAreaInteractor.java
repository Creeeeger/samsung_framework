package com.android.systemui.keyguard.domain.interactor;

import com.android.systemui.keyguard.data.repository.KeyguardRepository;
import com.android.systemui.keyguard.data.repository.KeyguardRepositoryImpl;
import kotlinx.coroutines.flow.StateFlow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardBottomAreaInteractor {
    public final StateFlow alpha;
    public final StateFlow animateDozingTransitions;
    public final StateFlow clockPosition;
    public final KeyguardRepository repository;

    public KeyguardBottomAreaInteractor(KeyguardRepository keyguardRepository) {
        this.repository = keyguardRepository;
        KeyguardRepositoryImpl keyguardRepositoryImpl = (KeyguardRepositoryImpl) keyguardRepository;
        this.animateDozingTransitions = keyguardRepositoryImpl.animateBottomAreaDozingTransitions;
        this.alpha = keyguardRepositoryImpl.bottomAreaAlpha;
        this.clockPosition = keyguardRepositoryImpl.clockPosition;
    }
}
