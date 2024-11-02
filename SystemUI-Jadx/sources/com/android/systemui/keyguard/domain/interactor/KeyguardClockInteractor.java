package com.android.systemui.keyguard.domain.interactor;

import com.android.systemui.keyguard.data.repository.KeyguardClockRepository;
import com.android.systemui.keyguard.data.repository.KeyguardClockRepository$special$$inlined$map$1;
import com.android.systemui.keyguard.data.repository.KeyguardClockRepository$special$$inlined$mapNotNull$1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardClockInteractor {
    public final KeyguardClockRepository$special$$inlined$mapNotNull$1 currentClockId;
    public final KeyguardClockRepository$special$$inlined$map$1 selectedClockSize;

    public KeyguardClockInteractor(KeyguardClockRepository keyguardClockRepository) {
        this.selectedClockSize = keyguardClockRepository.selectedClockSize;
        this.currentClockId = keyguardClockRepository.currentClockId;
    }
}
