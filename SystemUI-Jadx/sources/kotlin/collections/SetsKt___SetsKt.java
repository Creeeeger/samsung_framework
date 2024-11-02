package kotlin.collections;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class SetsKt___SetsKt extends SetsKt__SetsKt {
    public static final Set minus(Set set, Iterable iterable) {
        Collection<?> list;
        if (iterable instanceof Collection) {
            list = (Collection) iterable;
        } else {
            list = CollectionsKt___CollectionsKt.toList(iterable);
        }
        if (list.isEmpty()) {
            return CollectionsKt___CollectionsKt.toSet(set);
        }
        if (list instanceof Set) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (Object obj : set) {
                if (!list.contains(obj)) {
                    linkedHashSet.add(obj);
                }
            }
            return linkedHashSet;
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(set);
        linkedHashSet2.removeAll(list);
        return linkedHashSet2;
    }

    public static final Set plus(Set set, Iterable iterable) {
        Integer num;
        int size;
        if (iterable instanceof Collection) {
            num = Integer.valueOf(((Collection) iterable).size());
        } else {
            num = null;
        }
        if (num != null) {
            size = set.size() + num.intValue();
        } else {
            size = set.size() * 2;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt__MapsJVMKt.mapCapacity(size));
        linkedHashSet.addAll(set);
        CollectionsKt__MutableCollectionsKt.addAll(iterable, linkedHashSet);
        return linkedHashSet;
    }
}
