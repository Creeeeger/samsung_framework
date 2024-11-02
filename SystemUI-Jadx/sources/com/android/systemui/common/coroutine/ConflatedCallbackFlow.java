package com.android.systemui.common.coroutine;

import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ConflatedCallbackFlow {
    public static final ConflatedCallbackFlow INSTANCE = new ConflatedCallbackFlow();

    private ConflatedCallbackFlow() {
    }

    public static Flow conflatedCallbackFlow(Function2 function2) {
        return FlowKt.buffer$default(FlowKt.callbackFlow(function2), -1);
    }
}
