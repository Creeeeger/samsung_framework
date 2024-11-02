package com.android.systemui.util.leak;

import com.android.systemui.util.leak.TrackedObjects;
import java.util.Collection;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class LeakDetector$$ExternalSyntheticLambda0 implements Predicate {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return !(((Collection) obj) instanceof TrackedObjects.TrackedClass);
            default:
                return ((Collection) obj) instanceof TrackedObjects.TrackedClass;
        }
    }
}
