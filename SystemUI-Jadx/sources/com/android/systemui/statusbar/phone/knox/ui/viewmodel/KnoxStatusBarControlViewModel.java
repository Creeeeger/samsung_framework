package com.android.systemui.statusbar.phone.knox.ui.viewmodel;

import com.android.systemui.plugins.DarkIconDispatcher;
import com.android.systemui.statusbar.phone.knox.domain.interactor.KnoxStatusBarControlInteractor;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.flow.ReadonlyStateFlow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KnoxStatusBarControlViewModel {
    public final DarkIconDispatcher darkIconDispatcher;
    public final ReadonlyStateFlow knoxStatusBarCustomText;
    public Function1 setHidden;
    public final ReadonlyStateFlow statusBarHidden;
    public final ReadonlyStateFlow statusBarIconsEnabled;

    public KnoxStatusBarControlViewModel(KnoxStatusBarControlInteractor knoxStatusBarControlInteractor, KeyguardStateController keyguardStateController, DarkIconDispatcher darkIconDispatcher) {
        this.darkIconDispatcher = darkIconDispatcher;
        this.statusBarHidden = knoxStatusBarControlInteractor.statusBarHidden;
        this.statusBarIconsEnabled = knoxStatusBarControlInteractor.statusBarIconsEnabled;
        this.knoxStatusBarCustomText = knoxStatusBarControlInteractor.knoxStatusBarCustomText;
    }
}
