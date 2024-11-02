package com.android.keyguard.dagger;

import com.android.keyguard.KeyguardClockSwitchController;
import com.android.keyguard.KeyguardStatusView;
import com.android.keyguard.KeyguardStatusViewController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface KeyguardStatusViewComponent {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Factory {
        KeyguardStatusViewComponent build(KeyguardStatusView keyguardStatusView);
    }

    KeyguardClockSwitchController getKeyguardClockSwitchController();

    KeyguardStatusViewController getKeyguardStatusViewController();
}
