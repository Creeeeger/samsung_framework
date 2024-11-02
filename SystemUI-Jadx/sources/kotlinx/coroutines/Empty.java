package kotlinx.coroutines;

import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class Empty implements Incomplete {
    public final boolean isActive;

    public Empty(boolean z) {
        this.isActive = z;
    }

    @Override // kotlinx.coroutines.Incomplete
    public final NodeList getList() {
        return null;
    }

    @Override // kotlinx.coroutines.Incomplete
    public final boolean isActive() {
        return this.isActive;
    }

    public final String toString() {
        String str;
        if (this.isActive) {
            str = "Active";
        } else {
            str = "New";
        }
        return PathParser$$ExternalSyntheticOutline0.m("Empty{", str, "}");
    }
}
