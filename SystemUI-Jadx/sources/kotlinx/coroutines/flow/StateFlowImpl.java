package kotlinx.coroutines.flow;

import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
import kotlinx.coroutines.flow.internal.ChannelFlowOperatorImpl;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class StateFlowImpl extends AbstractSharedFlow implements MutableStateFlow, Flow, FusibleFlow {
    public final AtomicRef _state;
    public int sequence;

    public StateFlowImpl(Object obj) {
        this._state = AtomicFU.atomic(obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00c4, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r13, r8) != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00aa, code lost:
    
        if (kotlin.Unit.INSTANCE == r1) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00aa, code lost:
    
        if (0 == 0) goto L60;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00b0 A[Catch: all -> 0x0133, TryCatch #1 {all -> 0x0133, blocks: (B:15:0x00aa, B:17:0x00b0, B:20:0x00b7, B:21:0x00bd, B:25:0x00c0, B:27:0x00e7, B:31:0x00fe, B:33:0x011e, B:34:0x0125, B:39:0x012e, B:43:0x00c6, B:46:0x00cd, B:14:0x009c), top: B:13:0x009c }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00df A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v6, types: [kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r8v1, types: [kotlinx.coroutines.flow.internal.AbstractSharedFlow] */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object collect(kotlinx.coroutines.flow.FlowCollector r13, kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StateFlowImpl.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public final AbstractSharedFlowSlot createSlot() {
        return new StateFlowSlot();
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public final AbstractSharedFlowSlot[] createSlotArray() {
        return new StateFlowSlot[2];
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        setValue(obj);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    public final Flow fuse(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        boolean z;
        Symbol symbol = StateFlowKt.NONE;
        if (i >= 0 && i < 2) {
            z = true;
        } else {
            z = false;
        }
        if ((!z && i != -2) || bufferOverflow != BufferOverflow.DROP_OLDEST) {
            Symbol symbol2 = SharedFlowKt.NO_VALUE;
            if ((i != 0 && i != -3) || bufferOverflow != BufferOverflow.SUSPEND) {
                return new ChannelFlowOperatorImpl(this, coroutineContext, i, bufferOverflow);
            }
            return this;
        }
        return this;
    }

    @Override // kotlinx.coroutines.flow.StateFlow
    public final Object getValue() {
        Symbol symbol = NullSurrogateKt.NULL;
        Object obj = this._state.value;
        if (obj == symbol) {
            return null;
        }
        return obj;
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public final void resetReplayCache() {
        throw new UnsupportedOperationException("MutableStateFlow.resetReplayCache is not supported");
    }

    public final void setValue(Object obj) {
        int i;
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        Symbol symbol;
        if (obj == null) {
            obj = NullSurrogateKt.NULL;
        }
        synchronized (this) {
            if (!Intrinsics.areEqual(this._state.value, obj)) {
                this._state.setValue(obj);
                int i2 = this.sequence;
                if ((i2 & 1) == 0) {
                    int i3 = i2 + 1;
                    this.sequence = i3;
                    AbstractSharedFlowSlot[] abstractSharedFlowSlotArr2 = this.slots;
                    Unit unit = Unit.INSTANCE;
                    while (true) {
                        StateFlowSlot[] stateFlowSlotArr = (StateFlowSlot[]) abstractSharedFlowSlotArr2;
                        if (stateFlowSlotArr != null) {
                            for (StateFlowSlot stateFlowSlot : stateFlowSlotArr) {
                                if (stateFlowSlot != null) {
                                    AtomicRef atomicRef = stateFlowSlot._state;
                                    while (true) {
                                        Object obj2 = atomicRef.value;
                                        if (obj2 != null && obj2 != (symbol = StateFlowKt.PENDING)) {
                                            Symbol symbol2 = StateFlowKt.NONE;
                                            if (obj2 == symbol2) {
                                                if (stateFlowSlot._state.compareAndSet(obj2, symbol)) {
                                                    break;
                                                }
                                            } else if (stateFlowSlot._state.compareAndSet(obj2, symbol2)) {
                                                int i4 = Result.$r8$clinit;
                                                ((CancellableContinuationImpl) obj2).resumeWith(Unit.INSTANCE);
                                                break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        synchronized (this) {
                            i = this.sequence;
                            if (i == i3) {
                                this.sequence = i3 + 1;
                                return;
                            } else {
                                abstractSharedFlowSlotArr = this.slots;
                                Unit unit2 = Unit.INSTANCE;
                            }
                        }
                        abstractSharedFlowSlotArr2 = abstractSharedFlowSlotArr;
                        i3 = i;
                    }
                } else {
                    this.sequence = i2 + 2;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public final boolean tryEmit(Object obj) {
        setValue(obj);
        return true;
    }
}
