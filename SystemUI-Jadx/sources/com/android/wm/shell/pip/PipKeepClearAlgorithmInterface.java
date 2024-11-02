package com.android.wm.shell.pip;

import android.graphics.Rect;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface PipKeepClearAlgorithmInterface {
    default Rect adjust(PipBoundsState pipBoundsState, PipBoundsAlgorithm pipBoundsAlgorithm) {
        return pipBoundsState.getBounds();
    }

    default Rect findUnoccludedPosition(Rect rect, Set set, Set set2, Rect rect2) {
        return rect;
    }
}
