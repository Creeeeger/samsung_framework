package com.android.systemui.accessibility.data.repository;

import android.view.accessibility.AccessibilityManager;
import com.android.systemui.common.coroutine.ConflatedCallbackFlow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AccessibilityRepositoryImpl implements AccessibilityRepository {
    public final Flow isTouchExplorationEnabled;

    public AccessibilityRepositoryImpl(AccessibilityManager accessibilityManager) {
        ConflatedCallbackFlow conflatedCallbackFlow = ConflatedCallbackFlow.INSTANCE;
        AccessibilityRepositoryImpl$isTouchExplorationEnabled$1 accessibilityRepositoryImpl$isTouchExplorationEnabled$1 = new AccessibilityRepositoryImpl$isTouchExplorationEnabled$1(accessibilityManager, null);
        conflatedCallbackFlow.getClass();
        this.isTouchExplorationEnabled = FlowKt.distinctUntilChanged(ConflatedCallbackFlow.conflatedCallbackFlow(accessibilityRepositoryImpl$isTouchExplorationEnabled$1));
    }
}
