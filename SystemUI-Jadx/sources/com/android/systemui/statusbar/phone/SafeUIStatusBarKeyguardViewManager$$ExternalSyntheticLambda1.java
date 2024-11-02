package com.android.systemui.statusbar.phone;

import android.view.ViewGroup;
import com.android.keyguard.dagger.KeyguardBouncerComponent;
import com.android.systemui.keyguard.ui.binder.KeyguardBouncerViewBinder;
import com.android.systemui.keyguard.ui.viewmodel.KeyguardBouncerViewModel;
import com.android.systemui.keyguard.ui.viewmodel.PrimaryBouncerToGoneTransitionViewModel;
import com.android.systemui.shade.NotificationShadeWindowControllerImpl;
import com.android.systemui.shade.SecNotificationShadeWindowControllerHelperImpl;
import com.android.systemui.statusbar.phone.SafeUIStatusBarKeyguardViewManager;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ SafeUIStatusBarKeyguardViewManager f$0;
    public final /* synthetic */ KeyguardBouncerViewModel f$1;
    public final /* synthetic */ PrimaryBouncerToGoneTransitionViewModel f$2;
    public final /* synthetic */ KeyguardBouncerComponent.Factory f$3;

    public /* synthetic */ SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1(SafeUIStatusBarKeyguardViewManager safeUIStatusBarKeyguardViewManager, KeyguardBouncerViewModel keyguardBouncerViewModel, PrimaryBouncerToGoneTransitionViewModel primaryBouncerToGoneTransitionViewModel, KeyguardBouncerComponent.Factory factory) {
        this.f$0 = safeUIStatusBarKeyguardViewManager;
        this.f$1 = keyguardBouncerViewModel;
        this.f$2 = primaryBouncerToGoneTransitionViewModel;
        this.f$3 = factory;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SafeUIStatusBarKeyguardViewManager safeUIStatusBarKeyguardViewManager = this.f$0;
        KeyguardBouncerViewModel keyguardBouncerViewModel = this.f$1;
        PrimaryBouncerToGoneTransitionViewModel primaryBouncerToGoneTransitionViewModel = this.f$2;
        KeyguardBouncerComponent.Factory factory = this.f$3;
        SecNotificationShadeWindowControllerHelperImpl secNotificationShadeWindowControllerHelperImpl = ((NotificationShadeWindowControllerImpl) safeUIStatusBarKeyguardViewManager.mNotificationShadeWindowController).mHelper;
        ViewGroup viewGroup = safeUIStatusBarKeyguardViewManager.mSafeUIBouncerContainer;
        secNotificationShadeWindowControllerHelperImpl.addBouncer(viewGroup);
        ArrayList arrayList = safeUIStatusBarKeyguardViewManager.mPrimaryBouncerCallbackInteractor.expansionCallbacks;
        SafeUIStatusBarKeyguardViewManager.AnonymousClass1 anonymousClass1 = safeUIStatusBarKeyguardViewManager.mExpansionCallback;
        if (!arrayList.contains(anonymousClass1)) {
            arrayList.add(anonymousClass1);
        }
        KeyguardBouncerViewBinder.bind(viewGroup, keyguardBouncerViewModel, primaryBouncerToGoneTransitionViewModel, factory);
    }
}
