package com.android.systemui.keyguard.shared.model;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import com.android.settingslib.udfps.UdfpsOverlayParams$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TransitionStep {
    public final KeyguardState from;
    public final String ownerName;
    public final KeyguardState to;
    public final TransitionState transitionState;
    public final float value;

    public TransitionStep() {
        this(null, null, 0.0f, null, null, 31, null);
    }

    public static TransitionStep copy$default(TransitionStep transitionStep, float f, TransitionState transitionState, int i) {
        KeyguardState keyguardState;
        KeyguardState keyguardState2;
        String str = null;
        if ((i & 1) != 0) {
            keyguardState = transitionStep.from;
        } else {
            keyguardState = null;
        }
        if ((i & 2) != 0) {
            keyguardState2 = transitionStep.to;
        } else {
            keyguardState2 = null;
        }
        if ((i & 4) != 0) {
            f = transitionStep.value;
        }
        float f2 = f;
        if ((i & 8) != 0) {
            transitionState = transitionStep.transitionState;
        }
        TransitionState transitionState2 = transitionState;
        if ((i & 16) != 0) {
            str = transitionStep.ownerName;
        }
        transitionStep.getClass();
        return new TransitionStep(keyguardState, keyguardState2, f2, transitionState2, str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TransitionStep)) {
            return false;
        }
        TransitionStep transitionStep = (TransitionStep) obj;
        if (this.from == transitionStep.from && this.to == transitionStep.to && Float.compare(this.value, transitionStep.value) == 0 && this.transitionState == transitionStep.transitionState && Intrinsics.areEqual(this.ownerName, transitionStep.ownerName)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.ownerName.hashCode() + ((this.transitionState.hashCode() + UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.value, (this.to.hashCode() + (this.from.hashCode() * 31)) * 31, 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TransitionStep(from=");
        sb.append(this.from);
        sb.append(", to=");
        sb.append(this.to);
        sb.append(", value=");
        sb.append(this.value);
        sb.append(", transitionState=");
        sb.append(this.transitionState);
        sb.append(", ownerName=");
        return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(sb, this.ownerName, ")");
    }

    public TransitionStep(KeyguardState keyguardState, KeyguardState keyguardState2, float f, TransitionState transitionState, String str) {
        this.from = keyguardState;
        this.to = keyguardState2;
        this.value = f;
        this.transitionState = transitionState;
        this.ownerName = str;
    }

    public /* synthetic */ TransitionStep(KeyguardState keyguardState, KeyguardState keyguardState2, float f, TransitionState transitionState, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? KeyguardState.OFF : keyguardState, (i & 2) != 0 ? KeyguardState.OFF : keyguardState2, (i & 4) != 0 ? 0.0f : f, (i & 8) != 0 ? TransitionState.FINISHED : transitionState, (i & 16) != 0 ? "" : str);
    }

    public TransitionStep(TransitionInfo transitionInfo, float f, TransitionState transitionState) {
        this(transitionInfo.from, transitionInfo.to, f, transitionState, transitionInfo.ownerName);
    }
}
