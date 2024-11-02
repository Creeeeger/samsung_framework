package com.samsung.android.sume.core.filter.factory;

import com.samsung.android.sume.core.descriptor.MFDescriptor;
import java.util.function.Function;

/* compiled from: D8$$SyntheticClass */
/* loaded from: classes4.dex */
public final /* synthetic */ class ParallelFilterCreator$$ExternalSyntheticLambda0 implements Function {
    public final /* synthetic */ MediaFilterFactory f$0;

    public /* synthetic */ ParallelFilterCreator$$ExternalSyntheticLambda0(MediaFilterFactory mediaFilterFactory) {
        this.f$0 = mediaFilterFactory;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return this.f$0.newFilter((MFDescriptor) obj);
    }
}
