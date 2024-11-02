package kotlin.coroutines;

import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface CoroutineContext {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public abstract class DefaultImpls {
        public static CoroutineContext plus(CoroutineContext coroutineContext, CoroutineContext coroutineContext2) {
            if (coroutineContext2 != EmptyCoroutineContext.INSTANCE) {
                return (CoroutineContext) coroutineContext2.fold(coroutineContext, new Function2() { // from class: kotlin.coroutines.CoroutineContext$plus$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        CombinedContext combinedContext;
                        CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                        CoroutineContext minusKey = ((CoroutineContext) obj).minusKey(element.getKey());
                        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
                        if (minusKey != emptyCoroutineContext) {
                            ContinuationInterceptor.Key key = ContinuationInterceptor.Key;
                            ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) minusKey.get(key);
                            if (continuationInterceptor == null) {
                                combinedContext = new CombinedContext(minusKey, element);
                            } else {
                                CoroutineContext minusKey2 = minusKey.minusKey(key);
                                if (minusKey2 == emptyCoroutineContext) {
                                    return new CombinedContext(element, continuationInterceptor);
                                }
                                combinedContext = new CombinedContext(new CombinedContext(minusKey2, element), continuationInterceptor);
                            }
                            return combinedContext;
                        }
                        return element;
                    }
                });
            }
            return coroutineContext;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public interface Element extends CoroutineContext {
        Key getKey();
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public interface Key {
    }

    Object fold(Object obj, Function2 function2);

    Element get(Key key);

    CoroutineContext minusKey(Key key);

    CoroutineContext plus(CoroutineContext coroutineContext);
}
