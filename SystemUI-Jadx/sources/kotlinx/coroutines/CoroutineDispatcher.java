package kotlinx.coroutines;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.AbstractCoroutineContextKey;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class CoroutineDispatcher extends AbstractCoroutineContextElement implements ContinuationInterceptor {
    public static final Key Key = new Key(null);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class Key extends AbstractCoroutineContextKey {
        public /* synthetic */ Key(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Key() {
            super(ContinuationInterceptor.Key, new Function1() { // from class: kotlinx.coroutines.CoroutineDispatcher.Key.1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    CoroutineContext.Element element = (CoroutineContext.Element) obj;
                    if (element instanceof CoroutineDispatcher) {
                        return (CoroutineDispatcher) element;
                    }
                    return null;
                }
            });
        }
    }

    public CoroutineDispatcher() {
        super(ContinuationInterceptor.Key);
    }

    public abstract void dispatch(CoroutineContext coroutineContext, Runnable runnable);

    public void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        dispatch(coroutineContext, runnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final kotlin.coroutines.CoroutineContext.Element get(kotlin.coroutines.CoroutineContext.Key r4) {
        /*
            r3 = this;
            boolean r0 = r4 instanceof kotlin.coroutines.AbstractCoroutineContextKey
            r1 = 0
            if (r0 == 0) goto L25
            kotlin.coroutines.AbstractCoroutineContextKey r4 = (kotlin.coroutines.AbstractCoroutineContextKey) r4
            kotlin.coroutines.CoroutineContext$Key r0 = r3.key
            if (r0 == r4) goto L12
            kotlin.coroutines.CoroutineContext$Key r2 = r4.topmostKey
            if (r2 != r0) goto L10
            goto L15
        L10:
            r0 = 0
            goto L16
        L12:
            r4.getClass()
        L15:
            r0 = 1
        L16:
            if (r0 == 0) goto L2c
            kotlin.jvm.functions.Function1 r4 = r4.safeCast
            java.lang.Object r3 = r4.invoke(r3)
            kotlin.coroutines.CoroutineContext$Element r3 = (kotlin.coroutines.CoroutineContext.Element) r3
            boolean r4 = r3 instanceof kotlin.coroutines.CoroutineContext.Element
            if (r4 == 0) goto L2c
            goto L2b
        L25:
            kotlin.coroutines.ContinuationInterceptor$Key r0 = kotlin.coroutines.ContinuationInterceptor.Key
            if (r0 != r4) goto L2a
            goto L2b
        L2a:
            r3 = r1
        L2b:
            r1 = r3
        L2c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.CoroutineDispatcher.get(kotlin.coroutines.CoroutineContext$Key):kotlin.coroutines.CoroutineContext$Element");
    }

    public boolean isDispatchNeeded() {
        return true;
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        boolean z;
        if (key instanceof AbstractCoroutineContextKey) {
            AbstractCoroutineContextKey abstractCoroutineContextKey = (AbstractCoroutineContextKey) key;
            CoroutineContext.Key key2 = this.key;
            if (key2 != abstractCoroutineContextKey) {
                if (abstractCoroutineContextKey.topmostKey != key2) {
                    z = false;
                    if (!z && ((CoroutineContext.Element) abstractCoroutineContextKey.safeCast.invoke(this)) != null) {
                        return EmptyCoroutineContext.INSTANCE;
                    }
                }
            } else {
                abstractCoroutineContextKey.getClass();
            }
            z = true;
            return !z ? this : this;
        }
        if (ContinuationInterceptor.Key == key) {
            return EmptyCoroutineContext.INSTANCE;
        }
        return this;
    }

    public String toString() {
        return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(DebugStringsKt.getClassSimpleName(this), "@", DebugStringsKt.getHexAddress(this));
    }
}
