package com.android.systemui.keyboard;

import com.android.systemui.CoreStartable;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.Flags;
import com.android.systemui.keyboard.backlight.ui.KeyboardBacklightDialogCoordinator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PhysicalKeyboardCoreStartable implements CoreStartable {
    public final FeatureFlags featureFlags;

    public PhysicalKeyboardCoreStartable(KeyboardBacklightDialogCoordinator keyboardBacklightDialogCoordinator, FeatureFlags featureFlags) {
        this.featureFlags = featureFlags;
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        Flags flags = Flags.INSTANCE;
        this.featureFlags.getClass();
    }
}
