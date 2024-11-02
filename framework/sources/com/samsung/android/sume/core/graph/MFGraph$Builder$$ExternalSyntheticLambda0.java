package com.samsung.android.sume.core.graph;

import java.util.function.Supplier;

/* compiled from: D8$$SyntheticClass */
/* loaded from: classes4.dex */
public final /* synthetic */ class MFGraph$Builder$$ExternalSyntheticLambda0 implements Supplier {
    public final /* synthetic */ MFGraphUnitFactory f$0;

    public /* synthetic */ MFGraph$Builder$$ExternalSyntheticLambda0(MFGraphUnitFactory mFGraphUnitFactory) {
        this.f$0 = mFGraphUnitFactory;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f$0.newBufferChannel();
    }
}
