package com.android.systemui.globalactions.util;

import android.content.Context;
import com.samsung.android.globalactions.util.LogWrapper;
import com.samsung.android.knox.custom.ProKioskManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ProKioskManagerWrapper {
    public final LogWrapper mLogWrapper;
    public final ProKioskManager mProKioskManager = ProKioskManager.getInstance();
    public boolean mProKioskOptionShown = false;

    public ProKioskManagerWrapper(Context context, LogWrapper logWrapper) {
        this.mLogWrapper = logWrapper;
    }
}
