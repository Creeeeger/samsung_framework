package com.android.systemui.keyguard.shared.model;

import android.hardware.face.FaceManager;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SuccessAuthenticationStatus extends AuthenticationStatus {
    public final FaceManager.AuthenticationResult successResult;

    public SuccessAuthenticationStatus(FaceManager.AuthenticationResult authenticationResult) {
        super(null);
        this.successResult = authenticationResult;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof SuccessAuthenticationStatus) && Intrinsics.areEqual(this.successResult, ((SuccessAuthenticationStatus) obj).successResult)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.successResult.hashCode();
    }

    public final String toString() {
        return "SuccessAuthenticationStatus(successResult=" + this.successResult + ")";
    }
}
