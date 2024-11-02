package com.android.systemui;

import android.util.ArrayMap;
import com.android.systemui.Dependency;
import dagger.Lazy;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract /* synthetic */ class SystemUIInitializer$$ExternalSyntheticOutline0 {
    public static void m(Lazy lazy, Lazy lazy2, int i, ArrayMap arrayMap, Class cls) {
        Objects.requireNonNull(lazy);
        arrayMap.put(cls, new Dependency$$ExternalSyntheticLambda0(lazy2, i));
    }

    public static void m$1(Lazy lazy, Lazy lazy2, int i, ArrayMap arrayMap, Class cls) {
        Objects.requireNonNull(lazy);
        arrayMap.put(cls, new Dependency$$ExternalSyntheticLambda1(lazy2, i));
    }

    public static void m$2(Lazy lazy, Lazy lazy2, int i, ArrayMap arrayMap, Class cls) {
        Objects.requireNonNull(lazy);
        arrayMap.put(cls, new Dependency$$ExternalSyntheticLambda2(lazy2, i));
    }

    public static void m$3(Lazy lazy, Lazy lazy2, int i, ArrayMap arrayMap, Class cls) {
        Objects.requireNonNull(lazy);
        arrayMap.put(cls, new Dependency$$ExternalSyntheticLambda3(lazy2, i));
    }

    public static void m$4(Lazy lazy, Lazy lazy2, int i, ArrayMap arrayMap, Class cls) {
        Objects.requireNonNull(lazy);
        arrayMap.put(cls, new Dependency$$ExternalSyntheticLambda4(lazy2, i));
    }

    public static void m$5(Lazy lazy, final Lazy lazy2, final int i, ArrayMap arrayMap, Class cls) {
        Objects.requireNonNull(lazy);
        arrayMap.put(cls, new Dependency.LazyDependencyCreator() { // from class: com.android.systemui.Dependency$$ExternalSyntheticLambda5
            @Override // com.android.systemui.Dependency.LazyDependencyCreator
            public final Object createDependency() {
                int i2 = i;
                Lazy lazy3 = lazy2;
                switch (i2) {
                    case 0:
                        return lazy3.get();
                    case 1:
                        return lazy3.get();
                    case 2:
                        return lazy3.get();
                    case 3:
                        return lazy3.get();
                    case 4:
                        return lazy3.get();
                    case 5:
                        return lazy3.get();
                    case 6:
                        return lazy3.get();
                    case 7:
                        return lazy3.get();
                    case 8:
                        return lazy3.get();
                    case 9:
                        return lazy3.get();
                    case 10:
                        return lazy3.get();
                    case 11:
                        return lazy3.get();
                    case 12:
                        return lazy3.get();
                    case 13:
                        return lazy3.get();
                    case 14:
                        return lazy3.get();
                    case 15:
                        return lazy3.get();
                    case 16:
                        return lazy3.get();
                    case 17:
                        return lazy3.get();
                    case 18:
                        return lazy3.get();
                    case 19:
                        return lazy3.get();
                    case 20:
                        return lazy3.get();
                    case 21:
                        return lazy3.get();
                    case 22:
                        return lazy3.get();
                    case 23:
                        return lazy3.get();
                    case 24:
                        return lazy3.get();
                    case 25:
                        return lazy3.get();
                    case 26:
                        return lazy3.get();
                    case 27:
                        return lazy3.get();
                    case 28:
                        return lazy3.get();
                    default:
                        return lazy3.get();
                }
            }
        });
    }
}
