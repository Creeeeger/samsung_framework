package com.android.systemui.navigationbar;

import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class NavigationBar$$ExternalSyntheticLambda2 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ NavigationBar f$0;

    public /* synthetic */ NavigationBar$$ExternalSyntheticLambda2(NavigationBar navigationBar, int i) {
        this.$r8$classId = i;
        this.f$0 = navigationBar;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                NavigationBar navigationBar = this.f$0;
                navigationBar.mHandler.postDelayed(navigationBar.mOnVariableDurationHomeLongClick, ((Long) obj).longValue());
                return;
            default:
                NavigationBar navigationBar2 = this.f$0;
                navigationBar2.repositionNavigationBar(navigationBar2.mCurrentRotation);
                return;
        }
    }
}
