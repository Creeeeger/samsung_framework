package com.android.systemui.controls.ui.util;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SpanInfo {
    public int numberPerLine;
    public int span;
    public final int width;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public SpanInfo() {
        /*
            r3 = this;
            r0 = 3
            r1 = 0
            r2 = 0
            r3.<init>(r2, r2, r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.controls.ui.util.SpanInfo.<init>():void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpanInfo)) {
            return false;
        }
        SpanInfo spanInfo = (SpanInfo) obj;
        if (this.width == spanInfo.width && this.numberPerLine == spanInfo.numberPerLine) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.numberPerLine) + (Integer.hashCode(this.width) * 31);
    }

    public final String toString() {
        return "SpanInfo(width=" + this.width + ", numberPerLine=" + this.numberPerLine + ")";
    }

    public SpanInfo(int i, int i2) {
        this.width = i;
        this.numberPerLine = i2;
        this.span = 1;
    }

    public /* synthetic */ SpanInfo(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? -1 : i, (i3 & 2) != 0 ? 1 : i2);
    }
}
