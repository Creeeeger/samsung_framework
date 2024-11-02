package kotlinx.coroutines.flow;

import com.samsung.android.knox.ex.peripheral.PeripheralBarcodeConstants;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class StateFlowKt {
    public static final Symbol NONE = new Symbol(PeripheralBarcodeConstants.Symbology.Type.TYPE_NONE);
    public static final Symbol PENDING = new Symbol("PENDING");

    public static final StateFlowImpl MutableStateFlow(Object obj) {
        if (obj == null) {
            obj = NullSurrogateKt.NULL;
        }
        return new StateFlowImpl(obj);
    }
}
