package com.android.systemui.biometrics;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Action {
    public final Runnable onPanelInteraction;

    public Action(Runnable runnable) {
        this.onPanelInteraction = runnable;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof Action) && Intrinsics.areEqual(this.onPanelInteraction, ((Action) obj).onPanelInteraction)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.onPanelInteraction.hashCode();
    }

    public final String toString() {
        return "Action(onPanelInteraction=" + this.onPanelInteraction + ")";
    }
}
