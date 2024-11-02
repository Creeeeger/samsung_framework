package kotlin.collections;

import java.util.Collections;
import java.util.Map;
import kotlin.Pair;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class MapsKt__MapsJVMKt extends MapsKt__MapWithDefaultKt {
    public static final int mapCapacity(int i) {
        if (i >= 0) {
            if (i < 3) {
                return i + 1;
            }
            if (i < 1073741824) {
                return (int) ((i / 0.75f) + 1.0f);
            }
            return Integer.MAX_VALUE;
        }
        return i;
    }

    public static final Map mapOf(Pair pair) {
        return Collections.singletonMap(pair.getFirst(), pair.getSecond());
    }
}
