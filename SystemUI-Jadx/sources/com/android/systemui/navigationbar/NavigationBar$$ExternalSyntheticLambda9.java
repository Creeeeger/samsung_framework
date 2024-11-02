package com.android.systemui.navigationbar;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class NavigationBar$$ExternalSyntheticLambda9 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ NavigationBar$$ExternalSyntheticLambda9(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ((NavigationBar) this.f$0).mNavigationBarTransitions.setAutoDim(true);
                return;
            case 1:
                NavigationBarView navigationBarView = (NavigationBarView) ((NavigationBar) this.f$0).mView;
                navigationBarView.mLayoutTransitionsEnabled = true;
                navigationBarView.updateLayoutTransitionsEnabled();
                return;
            case 2:
                NavigationBar navigationBar = (NavigationBar) this.f$0;
                if (navigationBar.onHomeLongClick(((NavigationBarView) navigationBar.mView).getHomeButton().mCurrentView)) {
                    ((NavigationBarView) navigationBar.mView).getHomeButton().mCurrentView.performHapticFeedback(0, 1);
                    return;
                }
                return;
            default:
                ((NavigationBarView) this.f$0).updateStates();
                return;
        }
    }
}
