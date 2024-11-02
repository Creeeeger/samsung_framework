package com.android.systemui.globalactions.util;

import android.content.Context;
import com.samsung.android.knox.SemEnterpriseDeviceManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SemEnterpriseDeviceManagerWrapper {
    public final SemEnterpriseDeviceManager mSemEnterpriseDeviceManager;

    public SemEnterpriseDeviceManagerWrapper(Context context) {
        this.mSemEnterpriseDeviceManager = SemEnterpriseDeviceManager.getInstance(context);
    }
}
