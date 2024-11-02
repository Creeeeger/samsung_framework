package com.android.systemui.keyguard.domain.interactor;

import com.android.keyguard.logging.KeyguardLogger;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardTransitionAuditLogger {
    public final KeyguardTransitionInteractor interactor;
    public final KeyguardInteractor keyguardInteractor;
    public final KeyguardLogger logger;
    public final CoroutineScope scope;

    public KeyguardTransitionAuditLogger(CoroutineScope coroutineScope, KeyguardTransitionInteractor keyguardTransitionInteractor, KeyguardInteractor keyguardInteractor, KeyguardLogger keyguardLogger) {
        this.scope = coroutineScope;
        this.interactor = keyguardTransitionInteractor;
        this.keyguardInteractor = keyguardInteractor;
        this.logger = keyguardLogger;
    }
}
