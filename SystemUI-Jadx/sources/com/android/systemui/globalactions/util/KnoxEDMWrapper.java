package com.android.systemui.globalactions.util;

import android.content.Context;
import com.samsung.android.knox.EnterpriseDeviceManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KnoxEDMWrapper {
    public final EnterpriseDeviceManager mEDM;

    public KnoxEDMWrapper(Context context) {
        this.mEDM = EnterpriseDeviceManager.getInstance(context);
    }
}
