package com.android.systemui.qs.external;

import android.content.ComponentName;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TileServiceKey {
    public final ComponentName componentName;
    public final String string;
    public final int user;

    public TileServiceKey(ComponentName componentName, int i) {
        this.componentName = componentName;
        this.user = i;
        this.string = componentName.flattenToString() + ":" + i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TileServiceKey)) {
            return false;
        }
        TileServiceKey tileServiceKey = (TileServiceKey) obj;
        if (Intrinsics.areEqual(this.componentName, tileServiceKey.componentName) && this.user == tileServiceKey.user) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.user) + (this.componentName.hashCode() * 31);
    }

    public final String toString() {
        return this.string;
    }
}
