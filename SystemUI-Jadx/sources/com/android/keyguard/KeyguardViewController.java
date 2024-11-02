package com.android.keyguard;

import android.os.Bundle;
import android.view.ViewRootImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface KeyguardViewController extends KeyguardSecViewController {
    void blockPanelExpansionFromCurrentTouch();

    void dismissAndCollapse();

    ViewRootImpl getViewRootImpl();

    void hide(long j, long j2);

    void hideAlternateBouncer(boolean z);

    boolean isBouncerShowing();

    boolean isGoingToNotificationShade();

    boolean isUnlockWithWallpaper();

    void keyguardGoingAway();

    void notifyKeyguardAuthenticated(boolean z);

    void onCancelClicked();

    void onFinishedGoingToSleep();

    void onStartedGoingToSleep();

    void onStartedWakingUp();

    boolean primaryBouncerIsOrWillBeShowing();

    void reset(boolean z);

    void setKeyguardGoingAwayState(boolean z);

    void setNeedsInput(boolean z);

    void setOccluded(boolean z, boolean z2);

    void shouldSubtleWindowAnimationsForUnlock();

    void show(Bundle bundle);

    void showPrimaryBouncer(boolean z);

    void startPreHideAnimation(Runnable runnable);
}
