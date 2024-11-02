package com.android.systemui.keyguard.shared.model;

import java.util.Set;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public enum BiometricUnlockModel {
    NONE,
    WAKE_AND_UNLOCK,
    WAKE_AND_UNLOCK_PULSING,
    SHOW_BOUNCER,
    ONLY_WAKE,
    UNLOCK_COLLAPSING,
    DISMISS_BOUNCER,
    WAKE_AND_UNLOCK_FROM_DREAM;

    public static final Companion Companion;
    public static final Set wakeAndUnlockModes;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        BiometricUnlockModel biometricUnlockModel = WAKE_AND_UNLOCK;
        BiometricUnlockModel biometricUnlockModel2 = WAKE_AND_UNLOCK_PULSING;
        BiometricUnlockModel biometricUnlockModel3 = WAKE_AND_UNLOCK_FROM_DREAM;
        Companion = new Companion(null);
        wakeAndUnlockModes = SetsKt__SetsKt.setOf(biometricUnlockModel, biometricUnlockModel3, biometricUnlockModel2);
    }
}
