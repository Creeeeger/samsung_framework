package kotlinx.coroutines;

import androidx.constraintlayout.motion.widget.MotionLayout$$ExternalSyntheticOutline0;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class InvokeOnCancel extends CancelHandler {
    public final Function1 handler;

    public InvokeOnCancel(Function1 function1) {
        this.handler = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((Throwable) obj);
        return Unit.INSTANCE;
    }

    public final String toString() {
        return MotionLayout$$ExternalSyntheticOutline0.m("InvokeOnCancel[", DebugStringsKt.getClassSimpleName(this.handler), "@", DebugStringsKt.getHexAddress(this), "]");
    }

    @Override // kotlinx.coroutines.CancelHandlerBase
    public final void invoke(Throwable th) {
        this.handler.invoke(th);
    }
}
