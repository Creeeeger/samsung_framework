package com.android.systemui.keyguard.ui.viewmodel;

import android.content.Context;
import com.android.systemui.keyguard.data.repository.KeyguardClockRepository$special$$inlined$map$1;
import com.android.systemui.keyguard.domain.interactor.KeyguardClockInteractor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardPreviewClockViewModel {
    public final KeyguardPreviewClockViewModel$special$$inlined$map$1 isLargeClockVisible;
    public final KeyguardPreviewClockViewModel$special$$inlined$map$2 isSmallClockVisible;

    public KeyguardPreviewClockViewModel(Context context, KeyguardClockInteractor keyguardClockInteractor) {
        KeyguardClockRepository$special$$inlined$map$1 keyguardClockRepository$special$$inlined$map$1 = keyguardClockInteractor.selectedClockSize;
        this.isLargeClockVisible = new KeyguardPreviewClockViewModel$special$$inlined$map$1(keyguardClockRepository$special$$inlined$map$1);
        this.isSmallClockVisible = new KeyguardPreviewClockViewModel$special$$inlined$map$2(keyguardClockRepository$special$$inlined$map$1);
    }
}
