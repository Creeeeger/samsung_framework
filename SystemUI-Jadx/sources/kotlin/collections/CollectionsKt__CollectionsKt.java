package kotlin.collections;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class CollectionsKt__CollectionsKt extends CollectionsKt__CollectionsJVMKt {
    public static final ArrayList arrayListOf(Object... objArr) {
        if (objArr.length == 0) {
            return new ArrayList();
        }
        return new ArrayList(new ArrayAsCollection(objArr, true));
    }

    public static final int getLastIndex(List list) {
        return list.size() - 1;
    }

    public static final List listOf(Object... objArr) {
        if (objArr.length > 0) {
            return Arrays.asList(objArr);
        }
        return EmptyList.INSTANCE;
    }

    public static final List mutableListOf(Object... objArr) {
        if (objArr.length == 0) {
            return new ArrayList();
        }
        return new ArrayList(new ArrayAsCollection(objArr, true));
    }

    public static final List optimizeReadOnlyList(List list) {
        int size = list.size();
        if (size != 0) {
            if (size == 1) {
                return Collections.singletonList(list.get(0));
            }
            return list;
        }
        return EmptyList.INSTANCE;
    }

    public static final void throwIndexOverflow() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}
