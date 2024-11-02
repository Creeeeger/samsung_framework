package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineId;
import kotlinx.coroutines.ThreadContextElement;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class ThreadContextKt {
    public static final Symbol NO_THREAD_ELEMENTS = new Symbol("NO_THREAD_ELEMENTS");
    public static final Function2 countAll = new Function2() { // from class: kotlinx.coroutines.internal.ThreadContextKt$countAll$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            Integer num;
            int i;
            CoroutineContext.Element element = (CoroutineContext.Element) obj2;
            if (element instanceof ThreadContextElement) {
                if (obj instanceof Integer) {
                    num = (Integer) obj;
                } else {
                    num = null;
                }
                if (num != null) {
                    i = num.intValue();
                } else {
                    i = 1;
                }
                if (i == 0) {
                    return element;
                }
                return Integer.valueOf(i + 1);
            }
            return obj;
        }
    };
    public static final Function2 findOne = new Function2() { // from class: kotlinx.coroutines.internal.ThreadContextKt$findOne$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            ThreadContextElement threadContextElement = (ThreadContextElement) obj;
            CoroutineContext.Element element = (CoroutineContext.Element) obj2;
            if (threadContextElement == null) {
                if (element instanceof ThreadContextElement) {
                    return (ThreadContextElement) element;
                }
                return null;
            }
            return threadContextElement;
        }
    };
    public static final Function2 updateState = new Function2() { // from class: kotlinx.coroutines.internal.ThreadContextKt$updateState$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            ThreadState threadState = (ThreadState) obj;
            CoroutineContext.Element element = (CoroutineContext.Element) obj2;
            if (element instanceof ThreadContextElement) {
                ThreadContextElement threadContextElement = (ThreadContextElement) element;
                Object updateThreadContext = ((CoroutineId) threadContextElement).updateThreadContext(threadState.context);
                int i = threadState.i;
                threadState.values[i] = updateThreadContext;
                threadState.i = i + 1;
                threadState.elements[i] = threadContextElement;
            }
            return threadState;
        }
    };

    public static final void restoreThreadContext(CoroutineContext coroutineContext, Object obj) {
        if (obj == NO_THREAD_ELEMENTS) {
            return;
        }
        if (obj instanceof ThreadState) {
            ThreadState threadState = (ThreadState) obj;
            ThreadContextElement[] threadContextElementArr = threadState.elements;
            int length = threadContextElementArr.length - 1;
            if (length < 0) {
                return;
            }
            while (true) {
                int i = length - 1;
                Intrinsics.checkNotNull(threadContextElementArr[length]);
                Thread.currentThread().setName((String) threadState.values[length]);
                if (i >= 0) {
                    length = i;
                } else {
                    return;
                }
            }
        } else {
            ((CoroutineId) ((ThreadContextElement) coroutineContext.fold(null, findOne))).getClass();
            Thread.currentThread().setName((String) obj);
        }
    }

    public static final Object threadContextElements(CoroutineContext coroutineContext) {
        Object fold = coroutineContext.fold(0, countAll);
        Intrinsics.checkNotNull(fold);
        return fold;
    }

    public static final Object updateThreadContext(CoroutineContext coroutineContext, Object obj) {
        if (obj == null) {
            obj = threadContextElements(coroutineContext);
        }
        if (obj == 0) {
            return NO_THREAD_ELEMENTS;
        }
        if (obj instanceof Integer) {
            return coroutineContext.fold(new ThreadState(coroutineContext, ((Number) obj).intValue()), updateState);
        }
        return ((CoroutineId) ((ThreadContextElement) obj)).updateThreadContext(coroutineContext);
    }
}
