package com.android.systemui.globalactions.util;

import android.content.Context;
import com.samsung.android.knox.kiosk.KioskMode;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KioskModeWrapper {
    public final KioskMode mKioskMode;

    public KioskModeWrapper(Context context) {
        this.mKioskMode = KioskMode.getInstance(context);
    }
}
