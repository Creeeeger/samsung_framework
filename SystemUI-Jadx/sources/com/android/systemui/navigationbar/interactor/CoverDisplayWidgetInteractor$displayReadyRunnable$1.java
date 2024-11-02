package com.android.systemui.navigationbar.interactor;

import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.navigationbar.NavigationBarController;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.view.SemWindowManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CoverDisplayWidgetInteractor$displayReadyRunnable$1 implements Runnable {
    public final /* synthetic */ CoverDisplayWidgetInteractor this$0;

    public CoverDisplayWidgetInteractor$displayReadyRunnable$1(CoverDisplayWidgetInteractor coverDisplayWidgetInteractor) {
        this.this$0 = coverDisplayWidgetInteractor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        NavigationBarController navigationBarController = (NavigationBarController) Dependency.get(NavigationBarController.class);
        if (navigationBarController != null) {
            SettingsHelper settingsHelper = this.this$0.settingsHelper;
            settingsHelper.getClass();
            boolean z2 = false;
            if (LsRune.SUBSCREEN_WATCHFACE && settingsHelper.mItemLists.get("show_navigation_for_subscreen").getIntValue() != 0) {
                z = true;
            } else {
                z = false;
            }
            if (z && SemWindowManager.getInstance().isFolded()) {
                z2 = true;
            }
            if (z2) {
                navigationBarController.onDisplayReady(1);
            } else {
                navigationBarController.removeNavigationBar(1);
            }
        }
    }
}
