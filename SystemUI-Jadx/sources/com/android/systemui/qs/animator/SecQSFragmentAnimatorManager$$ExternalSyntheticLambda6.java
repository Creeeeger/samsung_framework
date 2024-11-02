package com.android.systemui.qs.animator;

import java.util.ArrayList;
import java.util.Objects;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SecQSFragmentAnimatorManager$$ExternalSyntheticLambda6 implements Predicate {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        Object obj2;
        switch (this.$r8$classId) {
            case 0:
            default:
                obj2 = (SecQSFragmentAnimatorBase) obj;
                break;
            case 1:
                obj2 = (ArrayList) obj;
                break;
        }
        return Objects.nonNull(obj2);
    }
}
