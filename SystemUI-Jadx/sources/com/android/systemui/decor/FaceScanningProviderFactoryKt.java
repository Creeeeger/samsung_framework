package com.android.systemui.decor;

import android.view.DisplayCutout;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class FaceScanningProviderFactoryKt {
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0015, code lost:
    
        if (r4 != 2) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x001c, code lost:
    
        if (r4 != 2) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000e, code lost:
    
        if (r4 != 2) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final int baseOnRotation0(int r4, int r5) {
        /*
            if (r5 == 0) goto L25
            r0 = 0
            r1 = 3
            r2 = 2
            r3 = 1
            if (r5 == r3) goto L18
            if (r5 == r1) goto L11
            if (r4 == 0) goto L22
            if (r4 == r3) goto L20
            if (r4 == r2) goto L1e
            goto L24
        L11:
            if (r4 == 0) goto L20
            if (r4 == r3) goto L1e
            if (r4 == r2) goto L24
            goto L22
        L18:
            if (r4 == 0) goto L24
            if (r4 == r3) goto L22
            if (r4 == r2) goto L20
        L1e:
            r4 = r0
            goto L25
        L20:
            r4 = r1
            goto L25
        L22:
            r4 = r2
            goto L25
        L24:
            r4 = r3
        L25:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.decor.FaceScanningProviderFactoryKt.baseOnRotation0(int, int):int");
    }

    public static final List getBoundBaseOnCurrentRotation(DisplayCutout displayCutout) {
        ArrayList arrayList = new ArrayList();
        if (!displayCutout.getBoundingRectLeft().isEmpty()) {
            arrayList.add(0);
        }
        if (!displayCutout.getBoundingRectTop().isEmpty()) {
            arrayList.add(1);
        }
        if (!displayCutout.getBoundingRectRight().isEmpty()) {
            arrayList.add(2);
        }
        if (!displayCutout.getBoundingRectBottom().isEmpty()) {
            arrayList.add(3);
        }
        return arrayList;
    }
}
