package com.android.systemui.keyguard;

import android.os.Build;
import android.os.SystemProperties;
import com.android.systemui.util.SafeUIState;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class KeyguardViewMediatorHelperImplKt {
    public static final boolean DEBUG_DISABLE_REMOTE_UNLOCK_ANIMATION;
    public static final boolean IS_SAFE_MODE_ENABLED;

    static {
        boolean z = false;
        if (Build.IS_USERDEBUG && SystemProperties.getBoolean("debug.keyguard.disable_unlock_animation", false)) {
            z = true;
        }
        DEBUG_DISABLE_REMOTE_UNLOCK_ANIMATION = z;
        IS_SAFE_MODE_ENABLED = SafeUIState.isSysUiSafeModeEnabled();
    }
}
