package com.android.systemui.controls.management.model;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SubtitleWrapper extends StructureElementWrapper {
    public final String subtitle;

    public SubtitleWrapper(String str) {
        super(null);
        this.subtitle = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof SubtitleWrapper) && Intrinsics.areEqual(this.subtitle, ((SubtitleWrapper) obj).subtitle)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.subtitle.hashCode();
    }

    public final String toString() {
        return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(new StringBuilder("SubtitleWrapper(subtitle="), this.subtitle, ")");
    }
}
