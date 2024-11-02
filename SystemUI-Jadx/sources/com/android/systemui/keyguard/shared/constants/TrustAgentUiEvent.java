package com.android.systemui.keyguard.shared.constants;

import com.android.internal.logging.UiEventLogger;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public enum TrustAgentUiEvent implements UiEventLogger.UiEventEnum {
    TRUST_AGENT_NEWLY_UNLOCKED(1361);

    private final int metricId;

    TrustAgentUiEvent(int i) {
        this.metricId = i;
    }

    public final int getId() {
        return this.metricId;
    }
}
