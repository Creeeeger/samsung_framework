package com.android.keyguard.dagger;

import com.android.systemui.shade.ShadeViewStateProvider;
import com.android.systemui.statusbar.phone.KeyguardStatusBarView;
import com.android.systemui.statusbar.phone.KeyguardStatusBarViewController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface KeyguardStatusBarViewComponent {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Factory {
        KeyguardStatusBarViewComponent build(KeyguardStatusBarView keyguardStatusBarView, ShadeViewStateProvider shadeViewStateProvider);
    }

    KeyguardStatusBarViewController getKeyguardStatusBarViewController();
}
