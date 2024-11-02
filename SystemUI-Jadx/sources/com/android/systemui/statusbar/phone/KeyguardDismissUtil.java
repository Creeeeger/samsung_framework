package com.android.systemui.statusbar.phone;

import android.util.Log;
import com.android.systemui.plugins.ActivityStarter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KeyguardDismissUtil implements KeyguardDismissHandler {
    public volatile KeyguardDismissHandler mDismissHandler;

    @Override // com.android.systemui.statusbar.phone.KeyguardDismissHandler
    public final void executeWhenUnlocked(ActivityStarter.OnDismissAction onDismissAction, boolean z, boolean z2) {
        KeyguardDismissHandler keyguardDismissHandler = this.mDismissHandler;
        if (keyguardDismissHandler == null) {
            Log.wtf("KeyguardDismissUtil", "KeyguardDismissHandler not set.");
            onDismissAction.onDismiss();
        } else {
            keyguardDismissHandler.executeWhenUnlocked(onDismissAction, z, z2);
        }
    }
}
