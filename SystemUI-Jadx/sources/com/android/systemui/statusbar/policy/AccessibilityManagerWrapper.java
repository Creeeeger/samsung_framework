package com.android.systemui.statusbar.policy;

import android.view.accessibility.AccessibilityManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AccessibilityManagerWrapper implements CallbackController {
    public final AccessibilityManager mAccessibilityManager;

    public AccessibilityManagerWrapper(AccessibilityManager accessibilityManager) {
        this.mAccessibilityManager = accessibilityManager;
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void addCallback(Object obj) {
        this.mAccessibilityManager.addAccessibilityServicesStateChangeListener((AccessibilityManager.AccessibilityServicesStateChangeListener) obj);
    }

    public final int getRecommendedTimeoutMillis(int i, int i2) {
        return this.mAccessibilityManager.getRecommendedTimeoutMillis(i, i2);
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void removeCallback(Object obj) {
        this.mAccessibilityManager.removeAccessibilityServicesStateChangeListener((AccessibilityManager.AccessibilityServicesStateChangeListener) obj);
    }
}
