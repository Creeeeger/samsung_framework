package kotlin.comparisons;

import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class ComparisonsKt__ComparisonsKt {
    public static final ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0 compareBy(Function1... function1Arr) {
        boolean z;
        if (function1Arr.length > 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return new ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0(function1Arr, 0);
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    public static final int compareValues(Comparable comparable, Comparable comparable2) {
        if (comparable == comparable2) {
            return 0;
        }
        if (comparable == null) {
            return -1;
        }
        if (comparable2 == null) {
            return 1;
        }
        return comparable.compareTo(comparable2);
    }
}
