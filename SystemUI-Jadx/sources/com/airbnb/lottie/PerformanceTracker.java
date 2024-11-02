package com.airbnb.lottie;

import androidx.collection.ArraySet;
import androidx.core.util.Pair;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PerformanceTracker {
    public boolean enabled = false;
    public final ArraySet frameListeners = new ArraySet();
    public final Map layerRenderTimes = new HashMap();

    public PerformanceTracker() {
        new Comparator(this) { // from class: com.airbnb.lottie.PerformanceTracker.1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                float floatValue = ((Float) ((Pair) obj).second).floatValue();
                float floatValue2 = ((Float) ((Pair) obj2).second).floatValue();
                if (floatValue2 > floatValue) {
                    return 1;
                }
                if (floatValue > floatValue2) {
                    return -1;
                }
                return 0;
            }
        };
    }
}
