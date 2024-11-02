package com.android.systemui.qs;

import java.util.List;
import java.util.Map;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SecQQSTileHost$$ExternalSyntheticLambda1 implements Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ List f$0;

    public /* synthetic */ SecQQSTileHost$$ExternalSyntheticLambda1(List list, int i) {
        this.$r8$classId = i;
        this.f$0 = list;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        boolean contains;
        switch (this.$r8$classId) {
            case 0:
                contains = this.f$0.contains(((Map.Entry) obj).getKey());
                break;
            default:
                contains = this.f$0.contains(((Map.Entry) obj).getKey());
                break;
        }
        return !contains;
    }
}
