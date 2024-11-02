package androidx.lifecycle;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.SupervisorJobImpl;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class LifecycleOwnerKt {
    public static final LifecycleCoroutineScopeImpl getLifecycleScope(LifecycleOwner lifecycleOwner) {
        LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl;
        LifecycleRegistry lifecycle = lifecycleOwner.getLifecycle();
        while (true) {
            AtomicReference atomicReference = lifecycle.mInternalScopeRef;
            lifecycleCoroutineScopeImpl = (LifecycleCoroutineScopeImpl) atomicReference.get();
            if (lifecycleCoroutineScopeImpl != null) {
                break;
            }
            SupervisorJobImpl supervisorJobImpl = new SupervisorJobImpl(null);
            DefaultScheduler defaultScheduler = Dispatchers.Default;
            MainCoroutineDispatcher mainCoroutineDispatcher = MainDispatcherLoader.dispatcher;
            lifecycleCoroutineScopeImpl = new LifecycleCoroutineScopeImpl(lifecycle, CoroutineContext.DefaultImpls.plus(supervisorJobImpl, mainCoroutineDispatcher.getImmediate()));
            if (atomicReference.compareAndSet(null, lifecycleCoroutineScopeImpl)) {
                BuildersKt.launch$default(lifecycleCoroutineScopeImpl, mainCoroutineDispatcher.getImmediate(), null, new LifecycleCoroutineScopeImpl$register$1(lifecycleCoroutineScopeImpl, null), 2);
                break;
            }
        }
        return lifecycleCoroutineScopeImpl;
    }
}
