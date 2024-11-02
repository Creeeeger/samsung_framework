package com.android.systemui.shade.carrier;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public /* synthetic */ class LatinNetworkNameProviderImpl$cellLocationCallback0$1 extends FunctionReferenceImpl implements Function1 {
    public LatinNetworkNameProviderImpl$cellLocationCallback0$1(Object obj) {
        super(1, obj, LatinNetworkNameProviderImpl.class, "handleCellLocationChanged", "handleCellLocationChanged(I)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        LatinNetworkNameProviderImpl.access$handleCellLocationChanged((LatinNetworkNameProviderImpl) this.receiver, ((Number) obj).intValue());
        return Unit.INSTANCE;
    }
}
