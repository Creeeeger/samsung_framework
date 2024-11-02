package androidx.lifecycle;

import android.os.Looper;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.internal.FastSafeIterableMap;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import androidx.lifecycle.Lifecycle;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class LifecycleRegistry extends Lifecycle {
    public int mAddingObserverCounter;
    public final boolean mEnforceMainThread;
    public boolean mHandlingEvent;
    public final WeakReference mLifecycleOwner;
    public boolean mNewEventOccurred;
    public FastSafeIterableMap mObserverMap;
    public final ArrayList mParentStates;
    public Lifecycle.State mState;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ObserverWithState {
        public final LifecycleEventObserver mLifecycleObserver;
        public Lifecycle.State mState;

        public ObserverWithState(LifecycleObserver lifecycleObserver, Lifecycle.State state) {
            LifecycleEventObserver reflectiveGenericLifecycleObserver;
            Map map = Lifecycling.sCallbackCache;
            boolean z = lifecycleObserver instanceof LifecycleEventObserver;
            boolean z2 = lifecycleObserver instanceof FullLifecycleObserver;
            if (z && z2) {
                reflectiveGenericLifecycleObserver = new FullLifecycleObserverAdapter((FullLifecycleObserver) lifecycleObserver, (LifecycleEventObserver) lifecycleObserver);
            } else if (z2) {
                reflectiveGenericLifecycleObserver = new FullLifecycleObserverAdapter((FullLifecycleObserver) lifecycleObserver, null);
            } else if (z) {
                reflectiveGenericLifecycleObserver = (LifecycleEventObserver) lifecycleObserver;
            } else {
                Class<?> cls = lifecycleObserver.getClass();
                if (Lifecycling.getObserverConstructorType(cls) == 2) {
                    List list = (List) ((HashMap) Lifecycling.sClassToAdapters).get(cls);
                    if (list.size() == 1) {
                        Lifecycling.createGeneratedAdapter((Constructor) list.get(0), lifecycleObserver);
                        reflectiveGenericLifecycleObserver = new SingleGeneratedAdapterObserver(null);
                    } else {
                        GeneratedAdapter[] generatedAdapterArr = new GeneratedAdapter[list.size()];
                        for (int i = 0; i < list.size(); i++) {
                            Lifecycling.createGeneratedAdapter((Constructor) list.get(i), lifecycleObserver);
                            generatedAdapterArr[i] = null;
                        }
                        reflectiveGenericLifecycleObserver = new CompositeGeneratedAdaptersObserver(generatedAdapterArr);
                    }
                } else {
                    reflectiveGenericLifecycleObserver = new ReflectiveGenericLifecycleObserver(lifecycleObserver);
                }
            }
            this.mLifecycleObserver = reflectiveGenericLifecycleObserver;
            this.mState = state;
        }

        public final void dispatchEvent(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            Lifecycle.State targetState = event.getTargetState();
            Lifecycle.State state = this.mState;
            if (targetState != null && targetState.compareTo(state) < 0) {
                state = targetState;
            }
            this.mState = state;
            this.mLifecycleObserver.onStateChanged(lifecycleOwner, event);
            this.mState = targetState;
        }
    }

    public LifecycleRegistry(LifecycleOwner lifecycleOwner) {
        this(lifecycleOwner, true);
    }

    public static LifecycleRegistry createUnsafe(LifecycleOwner lifecycleOwner) {
        return new LifecycleRegistry(lifecycleOwner, false);
    }

    @Override // androidx.lifecycle.Lifecycle
    public void addObserver(LifecycleObserver lifecycleObserver) {
        LifecycleOwner lifecycleOwner;
        boolean z;
        Lifecycle.Event event;
        enforceMainThreadIfNeeded("addObserver");
        Lifecycle.State state = this.mState;
        Lifecycle.State state2 = Lifecycle.State.DESTROYED;
        if (state != state2) {
            state2 = Lifecycle.State.INITIALIZED;
        }
        ObserverWithState observerWithState = new ObserverWithState(lifecycleObserver, state2);
        if (((ObserverWithState) this.mObserverMap.putIfAbsent(lifecycleObserver, observerWithState)) != null || (lifecycleOwner = (LifecycleOwner) this.mLifecycleOwner.get()) == null) {
            return;
        }
        if (this.mAddingObserverCounter == 0 && !this.mHandlingEvent) {
            z = false;
        } else {
            z = true;
        }
        Lifecycle.State calculateTargetState = calculateTargetState(lifecycleObserver);
        this.mAddingObserverCounter++;
        while (observerWithState.mState.compareTo(calculateTargetState) < 0 && this.mObserverMap.mHashMap.containsKey(lifecycleObserver)) {
            Lifecycle.State state3 = observerWithState.mState;
            ArrayList arrayList = this.mParentStates;
            arrayList.add(state3);
            Lifecycle.State state4 = observerWithState.mState;
            Lifecycle.Event event2 = Lifecycle.Event.ON_CREATE;
            int i = Lifecycle.AnonymousClass1.$SwitchMap$androidx$lifecycle$Lifecycle$State[state4.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 5) {
                        event = null;
                    } else {
                        event = Lifecycle.Event.ON_CREATE;
                    }
                } else {
                    event = Lifecycle.Event.ON_RESUME;
                }
            } else {
                event = Lifecycle.Event.ON_START;
            }
            if (event != null) {
                observerWithState.dispatchEvent(lifecycleOwner, event);
                arrayList.remove(arrayList.size() - 1);
                calculateTargetState = calculateTargetState(lifecycleObserver);
            } else {
                throw new IllegalStateException("no event up from " + observerWithState.mState);
            }
        }
        if (!z) {
            sync();
        }
        this.mAddingObserverCounter--;
    }

    public final Lifecycle.State calculateTargetState(LifecycleObserver lifecycleObserver) {
        SafeIterableMap.Entry entry;
        Lifecycle.State state;
        FastSafeIterableMap fastSafeIterableMap = this.mObserverMap;
        Lifecycle.State state2 = null;
        if (fastSafeIterableMap.mHashMap.containsKey(lifecycleObserver)) {
            entry = ((SafeIterableMap.Entry) fastSafeIterableMap.mHashMap.get(lifecycleObserver)).mPrevious;
        } else {
            entry = null;
        }
        if (entry != null) {
            state = ((ObserverWithState) entry.mValue).mState;
        } else {
            state = null;
        }
        ArrayList arrayList = this.mParentStates;
        if (!arrayList.isEmpty()) {
            state2 = (Lifecycle.State) arrayList.get(arrayList.size() - 1);
        }
        Lifecycle.State state3 = this.mState;
        if (state == null || state.compareTo(state3) >= 0) {
            state = state3;
        }
        if (state2 == null || state2.compareTo(state) >= 0) {
            return state;
        }
        return state2;
    }

    public final void enforceMainThreadIfNeeded(String str) {
        boolean z;
        if (this.mEnforceMainThread) {
            ArchTaskExecutor.getInstance().mDelegate.getClass();
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                throw new IllegalStateException(PathParser$$ExternalSyntheticOutline0.m("Method ", str, " must be called on the main thread"));
            }
        }
    }

    @Override // androidx.lifecycle.Lifecycle
    public final Lifecycle.State getCurrentState() {
        return this.mState;
    }

    public final void handleLifecycleEvent(Lifecycle.Event event) {
        enforceMainThreadIfNeeded("handleLifecycleEvent");
        moveToState(event.getTargetState());
    }

    public final void moveToState(Lifecycle.State state) {
        Lifecycle.State state2 = this.mState;
        if (state2 == state) {
            return;
        }
        if (state2 == Lifecycle.State.INITIALIZED && state == Lifecycle.State.DESTROYED) {
            throw new IllegalStateException("no event down from " + this.mState + " in component " + this.mLifecycleOwner.get());
        }
        this.mState = state;
        if (!this.mHandlingEvent && this.mAddingObserverCounter == 0) {
            this.mHandlingEvent = true;
            sync();
            this.mHandlingEvent = false;
            if (this.mState == Lifecycle.State.DESTROYED) {
                this.mObserverMap = new FastSafeIterableMap();
                return;
            }
            return;
        }
        this.mNewEventOccurred = true;
    }

    @Override // androidx.lifecycle.Lifecycle
    public void removeObserver(LifecycleObserver lifecycleObserver) {
        enforceMainThreadIfNeeded("removeObserver");
        this.mObserverMap.remove(lifecycleObserver);
    }

    public final void setCurrentState(Lifecycle.State state) {
        enforceMainThreadIfNeeded("setCurrentState");
        moveToState(state);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0059, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0100, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x017c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void sync() {
        /*
            Method dump skipped, instructions count: 391
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.LifecycleRegistry.sync():void");
    }

    private LifecycleRegistry(LifecycleOwner lifecycleOwner, boolean z) {
        this.mObserverMap = new FastSafeIterableMap();
        this.mAddingObserverCounter = 0;
        this.mHandlingEvent = false;
        this.mNewEventOccurred = false;
        this.mParentStates = new ArrayList();
        this.mLifecycleOwner = new WeakReference(lifecycleOwner);
        this.mState = Lifecycle.State.INITIALIZED;
        this.mEnforceMainThread = z;
    }
}
