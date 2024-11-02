package com.android.systemui.keyguard.shared.model;

import android.animation.ValueAnimator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TransitionInfo {
    public final ValueAnimator animator;
    public final KeyguardState from;
    public final String ownerName;
    public final KeyguardState to;

    public TransitionInfo(String str, KeyguardState keyguardState, KeyguardState keyguardState2, ValueAnimator valueAnimator) {
        this.ownerName = str;
        this.from = keyguardState;
        this.to = keyguardState2;
        this.animator = valueAnimator;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TransitionInfo)) {
            return false;
        }
        TransitionInfo transitionInfo = (TransitionInfo) obj;
        if (Intrinsics.areEqual(this.ownerName, transitionInfo.ownerName) && this.from == transitionInfo.from && this.to == transitionInfo.to && Intrinsics.areEqual(this.animator, transitionInfo.animator)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = (this.to.hashCode() + ((this.from.hashCode() + (this.ownerName.hashCode() * 31)) * 31)) * 31;
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator == null) {
            hashCode = 0;
        } else {
            hashCode = valueAnimator.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final String toString() {
        String str;
        if (this.animator != null) {
            str = "animated";
        } else {
            str = "manual";
        }
        return "TransitionInfo(ownerName=" + this.ownerName + ", from=" + this.from + ", to=" + this.to + ", " + str + ")";
    }
}
