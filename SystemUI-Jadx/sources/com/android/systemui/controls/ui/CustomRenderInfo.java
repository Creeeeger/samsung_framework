package com.android.systemui.controls.ui;

import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CustomRenderInfo {
    public static final Companion Companion = new Companion(null);
    public static final SparseArray actionIconMap = new SparseArray();
    public static final SparseArray statusIconDrawableMap = new SparseArray();
    public Drawable actionIcon;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public CustomRenderInfo(Drawable drawable) {
        this.actionIcon = drawable;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof CustomRenderInfo) && Intrinsics.areEqual(this.actionIcon, ((CustomRenderInfo) obj).actionIcon)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        Drawable drawable = this.actionIcon;
        if (drawable == null) {
            return 0;
        }
        return drawable.hashCode();
    }

    public final String toString() {
        return "CustomRenderInfo(actionIcon=" + this.actionIcon + ")";
    }
}
