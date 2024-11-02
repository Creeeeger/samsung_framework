package com.android.systemui.statusbar.pipeline.carrier;

import com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator;
import kotlin.collections.ArraysKt___ArraysKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FakeCarrierInfraMediatorImpl implements CarrierInfraMediator {
    public final CarrierInfraMediatorImpl carrierInfraMediatorImpl;

    public FakeCarrierInfraMediatorImpl(CarrierInfraMediatorImpl carrierInfraMediatorImpl) {
        this.carrierInfraMediatorImpl = carrierInfraMediatorImpl;
    }

    @Override // com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator
    public final Object get(CarrierInfraMediator.Values values, int i, Object... objArr) {
        return this.carrierInfraMediatorImpl.get(values, i, ArraysKt___ArraysKt.getOrNull(objArr));
    }

    @Override // com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator
    public final boolean isEnabled(CarrierInfraMediator.Conditions conditions, int i, Object... objArr) {
        return this.carrierInfraMediatorImpl.isEnabled(conditions, i, objArr);
    }

    @Override // com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator
    public final void set(CarrierInfraMediator.Values values, Object... objArr) {
        this.carrierInfraMediatorImpl.set(values, ArraysKt___ArraysKt.getOrNull(objArr));
    }
}
