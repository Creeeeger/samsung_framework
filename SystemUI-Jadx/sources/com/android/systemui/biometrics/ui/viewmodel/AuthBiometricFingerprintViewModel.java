package com.android.systemui.biometrics.ui.viewmodel;

import com.android.systemui.biometrics.domain.interactor.DisplayStateInteractor;
import com.android.systemui.biometrics.domain.interactor.DisplayStateInteractorImpl;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AuthBiometricFingerprintViewModel {
    public final FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 iconAsset;
    public final DisplayStateInteractor interactor;
    public int rotation;

    public AuthBiometricFingerprintViewModel(DisplayStateInteractor displayStateInteractor) {
        this.interactor = displayStateInteractor;
        DisplayStateInteractorImpl displayStateInteractorImpl = (DisplayStateInteractorImpl) displayStateInteractor;
        this.iconAsset = new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(displayStateInteractorImpl.isFolded, displayStateInteractorImpl.isInRearDisplayMode, new AuthBiometricFingerprintViewModel$iconAsset$1(this, null));
    }
}
