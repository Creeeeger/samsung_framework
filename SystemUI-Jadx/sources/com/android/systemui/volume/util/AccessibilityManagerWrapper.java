package com.android.systemui.volume.util;

import android.content.Context;
import android.view.accessibility.AccessibilityManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AccessibilityManagerWrapper {
    public final Context context;

    public AccessibilityManagerWrapper(Context context) {
        this.context = context;
    }

    public final int getRecommendedTimeoutMillis(int i) {
        SystemServiceExtension.INSTANCE.getClass();
        return ((AccessibilityManager) this.context.getSystemService(AccessibilityManager.class)).getRecommendedTimeoutMillis(0, i);
    }
}
