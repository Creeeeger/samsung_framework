package kotlinx.coroutines;

import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.internal.MissingMainCoroutineDispatcher;
import kotlinx.coroutines.internal.SystemPropsKt__SystemPropsKt;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class DefaultExecutorKt {
    public static final Delay DefaultDelay;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        String str;
        boolean z;
        Delay delay;
        int i = SystemPropsKt__SystemPropsKt.AVAILABLE_PROCESSORS;
        try {
            str = System.getProperty("kotlinx.coroutines.main.delay");
        } catch (SecurityException unused) {
            str = null;
        }
        if (str != null) {
            z = Boolean.parseBoolean(str);
        } else {
            z = false;
        }
        if (!z) {
            delay = DefaultExecutor.INSTANCE;
        } else {
            DefaultScheduler defaultScheduler = Dispatchers.Default;
            MainCoroutineDispatcher mainCoroutineDispatcher = MainDispatcherLoader.dispatcher;
            if (!(mainCoroutineDispatcher.getImmediate() instanceof MissingMainCoroutineDispatcher) && (mainCoroutineDispatcher instanceof Delay)) {
                delay = (Delay) mainCoroutineDispatcher;
            } else {
                delay = DefaultExecutor.INSTANCE;
            }
        }
        DefaultDelay = delay;
    }
}
