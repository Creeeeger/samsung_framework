package androidx.lifecycle;

import android.annotation.SuppressLint;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.internal.FastSafeIterableMap;
import androidx.constraintlayout.helper.widget.LogJson$JsonWriter$$ExternalSyntheticOutline0;
import androidx.lifecycle.Lifecycle;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes.dex */
public final class LifecycleRegistry extends Lifecycle {
    private final WeakReference<LifecycleOwner> mLifecycleOwner;
    private FastSafeIterableMap<LifecycleObserver, ObserverWithState> mObserverMap = new FastSafeIterableMap<>();
    private int mAddingObserverCounter = 0;
    private boolean mHandlingEvent = false;
    private boolean mNewEventOccurred = false;
    private ArrayList<Lifecycle.State> mParentStates = new ArrayList<>();
    private Lifecycle.State mState = Lifecycle.State.INITIALIZED;
    private final boolean mEnforceMainThread = true;

    static class ObserverWithState {
        LifecycleEventObserver mLifecycleObserver;
        Lifecycle.State mState;

        ObserverWithState(LifecycleObserver lifecycleObserver, Lifecycle.State state) {
            this.mLifecycleObserver = Lifecycling.lifecycleEventObserver(lifecycleObserver);
            this.mState = state;
        }

        final void dispatchEvent(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            Lifecycle.State targetState = event.getTargetState();
            Lifecycle.State state = this.mState;
            if (targetState.compareTo(state) < 0) {
                state = targetState;
            }
            this.mState = state;
            this.mLifecycleObserver.onStateChanged(lifecycleOwner, event);
            this.mState = targetState;
        }
    }

    public LifecycleRegistry(LifecycleOwner lifecycleOwner) {
        this.mLifecycleOwner = new WeakReference<>(lifecycleOwner);
    }

    private Lifecycle.State calculateTargetState(LifecycleObserver lifecycleObserver) {
        Map.Entry<LifecycleObserver, ObserverWithState> ceil = this.mObserverMap.ceil(lifecycleObserver);
        Lifecycle.State state = null;
        Lifecycle.State state2 = ceil != null ? ceil.getValue().mState : null;
        if (!this.mParentStates.isEmpty()) {
            state = this.mParentStates.get(r0.size() - 1);
        }
        Lifecycle.State state3 = this.mState;
        if (state2 == null || state2.compareTo(state3) >= 0) {
            state2 = state3;
        }
        return (state == null || state.compareTo(state2) >= 0) ? state2 : state;
    }

    @SuppressLint({"RestrictedApi"})
    private void enforceMainThreadIfNeeded(String str) {
        if (this.mEnforceMainThread && !ArchTaskExecutor.getInstance().isMainThread()) {
            throw new IllegalStateException(LogJson$JsonWriter$$ExternalSyntheticOutline0.m("Method ", str, " must be called on the main thread"));
        }
    }

    private void moveToState(Lifecycle.State state) {
        Lifecycle.State state2 = this.mState;
        if (state2 == state) {
            return;
        }
        Lifecycle.State state3 = Lifecycle.State.INITIALIZED;
        Lifecycle.State state4 = Lifecycle.State.DESTROYED;
        if (state2 == state3 && state == state4) {
            throw new IllegalStateException("no event down from " + this.mState + " in component " + this.mLifecycleOwner.get());
        }
        this.mState = state;
        if (this.mHandlingEvent || this.mAddingObserverCounter != 0) {
            this.mNewEventOccurred = true;
            return;
        }
        this.mHandlingEvent = true;
        sync();
        this.mHandlingEvent = false;
        if (this.mState == state4) {
            this.mObserverMap = new FastSafeIterableMap<>();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x016e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void sync() {
        /*
            Method dump skipped, instructions count: 377
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.LifecycleRegistry.sync():void");
    }

    @Override // androidx.lifecycle.Lifecycle
    public final void addObserver(LifecycleObserver lifecycleObserver) {
        LifecycleOwner lifecycleOwner;
        enforceMainThreadIfNeeded("addObserver");
        Lifecycle.State state = this.mState;
        Lifecycle.State state2 = Lifecycle.State.DESTROYED;
        if (state != state2) {
            state2 = Lifecycle.State.INITIALIZED;
        }
        ObserverWithState observerWithState = new ObserverWithState(lifecycleObserver, state2);
        if (this.mObserverMap.putIfAbsent(lifecycleObserver, observerWithState) == null && (lifecycleOwner = this.mLifecycleOwner.get()) != null) {
            boolean z = this.mAddingObserverCounter != 0 || this.mHandlingEvent;
            Lifecycle.State calculateTargetState = calculateTargetState(lifecycleObserver);
            this.mAddingObserverCounter++;
            while (observerWithState.mState.compareTo(calculateTargetState) < 0 && this.mObserverMap.contains(lifecycleObserver)) {
                this.mParentStates.add(observerWithState.mState);
                int ordinal = observerWithState.mState.ordinal();
                Lifecycle.Event event = ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? null : Lifecycle.Event.ON_RESUME : Lifecycle.Event.ON_START : Lifecycle.Event.ON_CREATE;
                if (event == null) {
                    throw new IllegalStateException("no event up from " + observerWithState.mState);
                }
                observerWithState.dispatchEvent(lifecycleOwner, event);
                this.mParentStates.remove(r4.size() - 1);
                calculateTargetState = calculateTargetState(lifecycleObserver);
            }
            if (!z) {
                sync();
            }
            this.mAddingObserverCounter--;
        }
    }

    public final Lifecycle.State getCurrentState() {
        return this.mState;
    }

    public final void handleLifecycleEvent(Lifecycle.Event event) {
        enforceMainThreadIfNeeded("handleLifecycleEvent");
        moveToState(event.getTargetState());
    }

    @Deprecated
    public final void markState() {
        enforceMainThreadIfNeeded("markState");
        setCurrentState();
    }

    @Override // androidx.lifecycle.Lifecycle
    public final void removeObserver(LifecycleObserver lifecycleObserver) {
        enforceMainThreadIfNeeded("removeObserver");
        this.mObserverMap.remove(lifecycleObserver);
    }

    public final void setCurrentState() {
        Lifecycle.State state = Lifecycle.State.CREATED;
        enforceMainThreadIfNeeded("setCurrentState");
        moveToState(state);
    }
}
