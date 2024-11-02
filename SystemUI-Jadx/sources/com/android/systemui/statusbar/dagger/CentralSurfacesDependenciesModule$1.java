package com.android.systemui.statusbar.dagger;

import android.service.dreams.IDreamManager;
import com.android.systemui.animation.DialogLaunchAnimator;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import dagger.Lazy;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CentralSurfacesDependenciesModule$1 implements DialogLaunchAnimator.Callback {
    public final /* synthetic */ Lazy val$alternateBouncerInteractor;
    public final /* synthetic */ IDreamManager val$dreamManager;
    public final /* synthetic */ KeyguardStateController val$keyguardStateController;

    public CentralSurfacesDependenciesModule$1(IDreamManager iDreamManager, KeyguardStateController keyguardStateController, Lazy lazy) {
        this.val$dreamManager = iDreamManager;
        this.val$keyguardStateController = keyguardStateController;
        this.val$alternateBouncerInteractor = lazy;
    }
}
