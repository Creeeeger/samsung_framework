package com.sec.internal.ims.core;

import android.telephony.CellIdentity;
import com.sec.internal.helper.os.CellIdentityWrapper;
import java.util.function.Function;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class PdnController$$ExternalSyntheticLambda1 implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return CellIdentityWrapper.from((CellIdentity) obj);
    }
}
