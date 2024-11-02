package kotlin.ranges;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ClosedFloatRange {
    public final float _endInclusive;
    public final float _start;

    public ClosedFloatRange(float f, float f2) {
        this._start = f;
        this._endInclusive = f2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
    
        if (r2 == false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof kotlin.ranges.ClosedFloatRange
            r1 = 0
            if (r0 == 0) goto L3c
            float r0 = r5._start
            float r5 = r5._endInclusive
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            r3 = 1
            if (r2 <= 0) goto L10
            r2 = r3
            goto L11
        L10:
            r2 = r1
        L11:
            if (r2 == 0) goto L23
            r2 = r6
            kotlin.ranges.ClosedFloatRange r2 = (kotlin.ranges.ClosedFloatRange) r2
            float r4 = r2._start
            float r2 = r2._endInclusive
            int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r2 <= 0) goto L20
            r2 = r3
            goto L21
        L20:
            r2 = r1
        L21:
            if (r2 != 0) goto L3b
        L23:
            kotlin.ranges.ClosedFloatRange r6 = (kotlin.ranges.ClosedFloatRange) r6
            float r2 = r6._start
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 != 0) goto L2d
            r0 = r3
            goto L2e
        L2d:
            r0 = r1
        L2e:
            if (r0 == 0) goto L3c
            float r6 = r6._endInclusive
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r5 != 0) goto L38
            r5 = r3
            goto L39
        L38:
            r5 = r1
        L39:
            if (r5 == 0) goto L3c
        L3b:
            r1 = r3
        L3c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.ClosedFloatRange.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        boolean z;
        float f = this._start;
        float f2 = this._endInclusive;
        if (f > f2) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return -1;
        }
        return Float.hashCode(f2) + (Float.hashCode(f) * 31);
    }

    public final String toString() {
        return this._start + ".." + this._endInclusive;
    }
}
