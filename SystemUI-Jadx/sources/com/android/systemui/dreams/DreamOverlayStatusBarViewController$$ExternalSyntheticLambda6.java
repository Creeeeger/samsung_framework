package com.android.systemui.dreams;

import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class DreamOverlayStatusBarViewController$$ExternalSyntheticLambda6 implements Runnable {
    public final /* synthetic */ DreamOverlayStatusBarViewController f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ boolean f$2;
    public final /* synthetic */ String f$3;

    public /* synthetic */ DreamOverlayStatusBarViewController$$ExternalSyntheticLambda6(DreamOverlayStatusBarViewController dreamOverlayStatusBarViewController, int i, boolean z, String str) {
        this.f$0 = dreamOverlayStatusBarViewController;
        this.f$1 = i;
        this.f$2 = z;
        this.f$3 = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        boolean z;
        DreamOverlayStatusBarViewController dreamOverlayStatusBarViewController = this.f$0;
        int i2 = this.f$1;
        boolean z2 = this.f$2;
        String str = this.f$3;
        if (dreamOverlayStatusBarViewController.mIsAttached) {
            DreamOverlayStatusBarView dreamOverlayStatusBarView = (DreamOverlayStatusBarView) dreamOverlayStatusBarViewController.mView;
            View view = (View) ((HashMap) dreamOverlayStatusBarView.mStatusIcons).get(Integer.valueOf(i2));
            if (view != null) {
                if (z2 && str != null) {
                    view.setContentDescription(str);
                }
                int i3 = 8;
                if (z2) {
                    i = 0;
                } else {
                    i = 8;
                }
                view.setVisibility(i);
                ViewGroup viewGroup = dreamOverlayStatusBarView.mSystemStatusViewGroup;
                int i4 = 0;
                while (true) {
                    if (i4 < dreamOverlayStatusBarView.mSystemStatusViewGroup.getChildCount()) {
                        if (dreamOverlayStatusBarView.mSystemStatusViewGroup.getChildAt(i4).getVisibility() == 0) {
                            z = true;
                            break;
                        }
                        i4++;
                    } else {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    i3 = 0;
                }
                viewGroup.setVisibility(i3);
            }
        }
    }
}
