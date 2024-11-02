package com.android.systemui.navigationbar.gestural;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class NavigationBarEdgePanel$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ NavigationBarEdgePanel f$0;

    public /* synthetic */ NavigationBarEdgePanel$$ExternalSyntheticLambda0(NavigationBarEdgePanel navigationBarEdgePanel, int i) {
        this.$r8$classId = i;
        this.f$0 = navigationBarEdgePanel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.setVisibility(8);
                return;
            case 1:
                NavigationBarEdgePanel navigationBarEdgePanel = this.f$0;
                navigationBarEdgePanel.mAngleOffset = Math.max(0.0f, navigationBarEdgePanel.mAngleOffset + 8.0f);
                navigationBarEdgePanel.updateAngle(true);
                navigationBarEdgePanel.mTranslationAnimation.mSpring = navigationBarEdgePanel.mTriggerBackSpring;
                navigationBarEdgePanel.setDesiredTranslation(navigationBarEdgePanel.mDesiredTranslation - (navigationBarEdgePanel.mDensity * 32.0f), true);
                navigationBarEdgePanel.animate().alpha(0.0f).setDuration(80L).withEndAction(new NavigationBarEdgePanel$$ExternalSyntheticLambda0(navigationBarEdgePanel, 2));
                navigationBarEdgePanel.mArrowDisappearAnimation.start();
                navigationBarEdgePanel.mHandler.removeCallbacks(navigationBarEdgePanel.mFailsafeRunnable);
                navigationBarEdgePanel.mHandler.postDelayed(navigationBarEdgePanel.mFailsafeRunnable, 200L);
                return;
            default:
                this.f$0.setVisibility(8);
                return;
        }
    }
}
