package com.android.systemui.keyguard.shared.model;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public enum DozeStateModel {
    UNINITIALIZED,
    INITIALIZED,
    DOZE,
    DOZE_SUSPEND_TRIGGERS,
    DOZE_AOD,
    DOZE_REQUEST_PULSE,
    DOZE_PULSING,
    DOZE_PULSING_BRIGHT,
    DOZE_PULSE_DONE,
    FINISH,
    DOZE_AOD_PAUSED,
    DOZE_AOD_PAUSING,
    DOZE_AOD_DOCKED,
    DOZE_MOD,
    SCRIM_AOD_ENDED,
    DOZE_TRANSITION_ENDED,
    DOZE_DISPLAY_STATE_ON;

    public static final Companion Companion = new Companion(null);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
