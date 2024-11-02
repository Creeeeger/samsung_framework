package kotlin.collections;

import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class SetsKt__SetsKt extends SetsKt__SetsJVMKt {
    public static final Set setOf(Object... objArr) {
        if (objArr.length > 0) {
            return ArraysKt___ArraysKt.toSet(objArr);
        }
        return EmptySet.INSTANCE;
    }
}
