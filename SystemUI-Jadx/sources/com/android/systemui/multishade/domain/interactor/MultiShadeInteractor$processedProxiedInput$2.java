package com.android.systemui.multishade.domain.interactor;

import com.android.systemui.multishade.shared.model.ProxiedInputModel;
import com.android.systemui.multishade.shared.model.ShadeConfig;
import kotlin.Pair;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.AdaptedFunctionReference;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public /* synthetic */ class MultiShadeInteractor$processedProxiedInput$2 extends AdaptedFunctionReference implements Function3 {
    public static final MultiShadeInteractor$processedProxiedInput$2 INSTANCE = new MultiShadeInteractor$processedProxiedInput$2();

    public MultiShadeInteractor$processedProxiedInput$2() {
        super(3, Pair.class, "<init>", "<init>(Ljava/lang/Object;Ljava/lang/Object;)V", 4);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        return new Pair((ShadeConfig) obj, (ProxiedInputModel) obj2);
    }
}
