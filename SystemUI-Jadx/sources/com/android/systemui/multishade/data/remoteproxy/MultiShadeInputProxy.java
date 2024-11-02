package com.android.systemui.multishade.data.remoteproxy;

import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MultiShadeInputProxy {
    public final SharedFlowImpl _proxiedTouch;
    public final ReadonlySharedFlow proxiedInput;

    public MultiShadeInputProxy() {
        SharedFlowImpl MutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(1, 0, BufferOverflow.DROP_OLDEST, 2);
        this._proxiedTouch = MutableSharedFlow$default;
        this.proxiedInput = new ReadonlySharedFlow(MutableSharedFlow$default, null);
    }
}
