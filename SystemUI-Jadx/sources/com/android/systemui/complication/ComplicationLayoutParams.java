package com.android.systemui.complication;

import android.view.ViewGroup;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ComplicationLayoutParams extends ViewGroup.LayoutParams {
    public static final Map INVALID_DIRECTIONS;
    public static final int[] INVALID_POSITIONS = {3, 12};
    public final int mConstraint;
    public final int mDirection;
    public final int mDirectionalSpacing;
    public final int mPosition;
    public final boolean mSnapToGuide;
    public final int mWeight;

    static {
        HashMap hashMap = new HashMap();
        INVALID_DIRECTIONS = hashMap;
        hashMap.put(2, 2);
        hashMap.put(1, 1);
        hashMap.put(4, 4);
        hashMap.put(8, 8);
    }

    public ComplicationLayoutParams(int i, int i2, int i3, int i4, int i5) {
        this(i, i2, i3, i4, i5, -1, -1, false);
    }

    public static void iteratePositions(int i, Consumer consumer) {
        for (int i2 = 1; i2 <= 8; i2 <<= 1) {
            if ((i & i2) == i2) {
                consumer.accept(Integer.valueOf(i2));
            }
        }
    }

    public ComplicationLayoutParams(int i, int i2, int i3, int i4, int i5, int i6) {
        this(i, i2, i3, i4, i5, i6, -1, false);
    }

    public ComplicationLayoutParams(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this(i, i2, i3, i4, i5, i6, i7, false);
    }

    public ComplicationLayoutParams(int i, int i2, int i3, int i4, int i5, boolean z) {
        this(i, i2, i3, i4, i5, -1, -1, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public ComplicationLayoutParams(int r5, int r6, int r7, int r8, int r9, int r10, int r11, boolean r12) {
        /*
            r4 = this;
            r4.<init>(r5, r6)
            r5 = 0
            r6 = 1
            if (r7 != 0) goto L8
            goto L14
        L8:
            int[] r0 = com.android.systemui.complication.ComplicationLayoutParams.INVALID_POSITIONS
            r1 = r5
        Lb:
            r2 = 2
            if (r1 >= r2) goto L19
            r2 = r0[r1]
            r3 = r7 & r2
            if (r3 != r2) goto L16
        L14:
            r0 = r5
            goto L1a
        L16:
            int r1 = r1 + 1
            goto Lb
        L19:
            r0 = r6
        L1a:
            if (r0 == 0) goto L64
            r4.mPosition = r7
            r0 = r6
        L1f:
            r1 = 8
            if (r0 > r1) goto L4a
            r1 = r7 & r0
            if (r1 != r0) goto L47
            java.util.Map r1 = com.android.systemui.complication.ComplicationLayoutParams.INVALID_DIRECTIONS
            java.lang.Integer r2 = java.lang.Integer.valueOf(r0)
            java.util.HashMap r1 = (java.util.HashMap) r1
            boolean r2 = r1.containsKey(r2)
            if (r2 == 0) goto L47
            java.lang.Integer r2 = java.lang.Integer.valueOf(r0)
            java.lang.Object r1 = r1.get(r2)
            java.lang.Integer r1 = (java.lang.Integer) r1
            int r1 = r1.intValue()
            r1 = r1 & r8
            if (r1 == 0) goto L47
            goto L4b
        L47:
            int r0 = r0 << 1
            goto L1f
        L4a:
            r5 = r6
        L4b:
            if (r5 == 0) goto L58
            r4.mDirection = r8
            r4.mWeight = r9
            r4.mDirectionalSpacing = r10
            r4.mConstraint = r11
            r4.mSnapToGuide = r12
            return
        L58:
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            java.lang.String r5 = "invalid direction:"
            java.lang.String r5 = android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(r5, r8)
            r4.<init>(r5)
            throw r4
        L64:
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            java.lang.String r5 = "invalid position:"
            java.lang.String r5 = android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(r5, r7)
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.complication.ComplicationLayoutParams.<init>(int, int, int, int, int, int, int, boolean):void");
    }

    public ComplicationLayoutParams(ComplicationLayoutParams complicationLayoutParams) {
        super(complicationLayoutParams);
        this.mPosition = complicationLayoutParams.mPosition;
        this.mDirection = complicationLayoutParams.mDirection;
        this.mWeight = complicationLayoutParams.mWeight;
        this.mDirectionalSpacing = complicationLayoutParams.mDirectionalSpacing;
        this.mConstraint = complicationLayoutParams.mConstraint;
        this.mSnapToGuide = complicationLayoutParams.mSnapToGuide;
    }
}
