package com.android.systemui.biometrics.udfps;

import android.graphics.Rect;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BoundingBoxOverlapDetector implements OverlapDetector {
    @Override // com.android.systemui.biometrics.udfps.OverlapDetector
    public final boolean isGoodOverlap(NormalizedTouchData normalizedTouchData, Rect rect, Rect rect2) {
        if (normalizedTouchData.isWithinBounds(rect2) && normalizedTouchData.isWithinBounds(rect)) {
            return true;
        }
        return false;
    }
}
