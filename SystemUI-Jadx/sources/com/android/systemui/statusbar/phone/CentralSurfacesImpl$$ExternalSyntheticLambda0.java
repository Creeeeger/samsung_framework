package com.android.systemui.statusbar.phone;

import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.statusbar.StatusBarStateControllerImpl;
import com.android.systemui.statusbar.phone.FoldStateListener;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.wm.shell.bubbles.Bubbles;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class CentralSurfacesImpl$$ExternalSyntheticLambda0 implements FoldStateListener.OnFoldStateChangeListener, KeyguardDismissHandler, Bubbles.BubbleExpandListener {
    public final /* synthetic */ Object f$0;

    public /* synthetic */ CentralSurfacesImpl$$ExternalSyntheticLambda0(Object obj) {
        this.f$0 = obj;
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardDismissHandler
    public final void executeWhenUnlocked(ActivityStarter.OnDismissAction onDismissAction, boolean z, boolean z2) {
        CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) this.f$0;
        if (((KeyguardStateControllerImpl) centralSurfacesImpl.mKeyguardStateController).mShowing && z) {
            ((StatusBarStateControllerImpl) centralSurfacesImpl.mStatusBarStateController).mLeaveOpenOnKeyguardHide = true;
        }
        centralSurfacesImpl.mActivityStarter.dismissKeyguardThenExecute(onDismissAction, null, z2);
    }

    @Override // com.android.wm.shell.bubbles.Bubbles.BubbleExpandListener
    public final void onBubbleExpandChanged(String str, boolean z) {
        CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) this.f$0;
        centralSurfacesImpl.mContext.getMainExecutor().execute(new CentralSurfacesImpl$$ExternalSyntheticLambda24(centralSurfacesImpl, z, str, 1));
    }

    public final void onStatusBarViewUpdated(PhoneStatusBarViewController phoneStatusBarViewController, PhoneStatusBarTransitions phoneStatusBarTransitions) {
        CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) this.f$0;
        centralSurfacesImpl.mPhoneStatusBarViewController = phoneStatusBarViewController;
        centralSurfacesImpl.mStatusBarTransitions = phoneStatusBarTransitions;
        centralSurfacesImpl.mNotificationShadeWindowViewController.mStatusBarViewController = phoneStatusBarViewController;
        ((NotificationPanelViewController) centralSurfacesImpl.mShadeSurface).updateExpansionAndVisibility();
        centralSurfacesImpl.setBouncerShowingForStatusBarComponents(centralSurfacesImpl.mBouncerShowing);
        centralSurfacesImpl.checkBarModes();
    }
}
