package com.android.systemui.util.kotlin;

import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.AdaptedFunctionReference;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
final /* synthetic */ class FlowKt$pairwise$4 extends AdaptedFunctionReference implements Function3 {
    public static final FlowKt$pairwise$4 INSTANCE = new FlowKt$pairwise$4();

    public FlowKt$pairwise$4() {
        super(3, WithPrev.class, "<init>", "<init>(Ljava/lang/Object;Ljava/lang/Object;)V", 4);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        return new WithPrev(obj, obj2);
    }
}
