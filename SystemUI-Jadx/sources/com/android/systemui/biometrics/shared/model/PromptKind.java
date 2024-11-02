package com.android.systemui.biometrics.shared.model;

import com.android.systemui.biometrics.domain.model.BiometricModalities;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface PromptKind {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Biometric implements PromptKind {
        public final BiometricModalities activeModalities;

        public Biometric() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Biometric) && Intrinsics.areEqual(this.activeModalities, ((Biometric) obj).activeModalities)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.activeModalities.hashCode();
        }

        public final String toString() {
            return "Biometric(activeModalities=" + this.activeModalities + ")";
        }

        public Biometric(BiometricModalities biometricModalities) {
            this.activeModalities = biometricModalities;
        }

        public /* synthetic */ Biometric(BiometricModalities biometricModalities, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? new BiometricModalities(null, null, 3, null) : biometricModalities);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Password implements PromptKind {
        public static final Password INSTANCE = new Password();

        private Password() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Pattern implements PromptKind {
        public static final Pattern INSTANCE = new Pattern();

        private Pattern() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Pin implements PromptKind {
        public static final Pin INSTANCE = new Pin();

        private Pin() {
        }
    }
}
