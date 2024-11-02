package com.samsung.android.knox.restriction;

import android.content.Context;
import com.samsung.android.knox.ContextInfo;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SPDControlPolicy {
    public static final int SPD_ENFORCE_NONE = 0;
    public static final int SPD_ENFORCE_OFF = 2;
    public static final int SPD_ENFORCE_ON = 1;
    public static final int SPD_FAILED = -1;
    public static final int SPD_OFF = 4;
    public static final int SPD_ON = 3;
    public static String TAG = "SPDControlPolicy";

    public SPDControlPolicy(ContextInfo contextInfo, Context context) {
    }

    public final int getAutoSecurityPolicyUpdateMode() {
        return -1;
    }

    public final boolean setAutoSecurityPolicyUpdateMode(int i) {
        return false;
    }
}
