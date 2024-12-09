package com.sec.internal.helper;

import com.sec.internal.interfaces.ims.core.ISimManager;
import java.util.function.Function;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class SimUtil$$ExternalSyntheticLambda3 implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return Boolean.valueOf(((ISimManager) obj).isEsim());
    }
}
