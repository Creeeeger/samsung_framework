package com.android.systemui.biometrics.ui.viewmodel;

import com.android.systemui.biometrics.domain.model.BiometricModality;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PromptAuthState {
    public final BiometricModality authenticatedModality;
    public final long delay;
    public final boolean isAuthenticated;
    public final boolean needsUserConfirmation;

    public PromptAuthState(boolean z, BiometricModality biometricModality, boolean z2, long j) {
        this.isAuthenticated = z;
        this.authenticatedModality = biometricModality;
        this.needsUserConfirmation = z2;
        this.delay = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PromptAuthState)) {
            return false;
        }
        PromptAuthState promptAuthState = (PromptAuthState) obj;
        if (this.isAuthenticated == promptAuthState.isAuthenticated && this.authenticatedModality == promptAuthState.authenticatedModality && this.needsUserConfirmation == promptAuthState.needsUserConfirmation && this.delay == promptAuthState.delay) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int i = 1;
        boolean z = this.isAuthenticated;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int hashCode = (this.authenticatedModality.hashCode() + (i2 * 31)) * 31;
        boolean z2 = this.needsUserConfirmation;
        if (!z2) {
            i = z2 ? 1 : 0;
        }
        return Long.hashCode(this.delay) + ((hashCode + i) * 31);
    }

    public final String toString() {
        return "PromptAuthState(isAuthenticated=" + this.isAuthenticated + ", authenticatedModality=" + this.authenticatedModality + ", needsUserConfirmation=" + this.needsUserConfirmation + ", delay=" + this.delay + ")";
    }

    public /* synthetic */ PromptAuthState(boolean z, BiometricModality biometricModality, boolean z2, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, (i & 2) != 0 ? BiometricModality.None : biometricModality, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? 0L : j);
    }
}
