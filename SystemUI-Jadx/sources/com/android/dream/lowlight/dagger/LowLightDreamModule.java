package com.android.dream.lowlight.dagger;

import android.content.ComponentName;
import android.content.Context;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LowLightDreamModule {
    public static final LowLightDreamModule INSTANCE = new LowLightDreamModule();

    private LowLightDreamModule() {
    }

    public static ComponentName providesLowLightDreamComponent(Context context) {
        boolean z;
        String string = context.getResources().getString(R.string.config_lowLightDreamComponent);
        if (string.length() == 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return null;
        }
        return ComponentName.unflattenFromString(string);
    }
}
