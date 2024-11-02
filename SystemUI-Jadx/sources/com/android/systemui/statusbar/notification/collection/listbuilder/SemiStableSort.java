package com.android.systemui.statusbar.notification.collection.listbuilder;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.function.ToIntFunction;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SemiStableSort {
    public static final Companion Companion = new Companion(null);
    public final Lazy preallocatedWorkspace$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.notification.collection.listbuilder.SemiStableSort$preallocatedWorkspace$2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return new ArrayList();
        }
    });
    public final Lazy preallocatedAdditions$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.notification.collection.listbuilder.SemiStableSort$preallocatedAdditions$2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return new ArrayList();
        }
    });
    public final Lazy preallocatedMapToIndex$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.notification.collection.listbuilder.SemiStableSort$preallocatedMapToIndex$2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return new HashMap();
        }
    });
    public final Lazy preallocatedMapToIndexComparator$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.notification.collection.listbuilder.SemiStableSort$preallocatedMapToIndexComparator$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            final SemiStableSort semiStableSort = SemiStableSort.this;
            return Comparator.comparingInt(new ToIntFunction() { // from class: com.android.systemui.statusbar.notification.collection.listbuilder.SemiStableSort$preallocatedMapToIndexComparator$2.1
                @Override // java.util.function.ToIntFunction
                public final int applyAsInt(Object obj) {
                    Integer num = (Integer) ((HashMap) SemiStableSort.this.preallocatedMapToIndex$delegate.getValue()).get(obj);
                    if (num == null) {
                        return -1;
                    }
                    return num.intValue();
                }
            });
        }
    });

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final void access$insertPreSortedElementsWithFewestMisOrderings(Companion companion, List list, Iterable iterable, Comparator comparator) {
            int i;
            companion.getClass();
            int i2 = 0;
            for (Object obj : iterable) {
                int size = list.size();
                int i3 = 0;
                int i4 = 0;
                int i5 = i2;
                while (i2 < size) {
                    int compare = comparator.compare(obj, list.get(i2));
                    if (compare < 0) {
                        i = -1;
                    } else if (compare > 0) {
                        i = 1;
                    } else {
                        i = 0;
                    }
                    i3 += i;
                    if (i3 > i4) {
                        i5 = i2 + 1;
                        i4 = i3;
                    }
                    i2++;
                }
                list.add(i5, obj);
                i2 = i5 + 1;
            }
        }

        public final <T> boolean isSorted(List<? extends T> list, Comparator<T> comparator) {
            if (list.size() <= 1) {
                return true;
            }
            Iterator<? extends T> it = list.iterator();
            T next = it.next();
            while (it.hasNext()) {
                T next2 = it.next();
                if (comparator.compare(next, next2) > 0) {
                    return false;
                }
                next = next2;
            }
            return true;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface StableOrder {
    }

    public final ArrayList getPreallocatedAdditions() {
        return (ArrayList) this.preallocatedAdditions$delegate.getValue();
    }
}
