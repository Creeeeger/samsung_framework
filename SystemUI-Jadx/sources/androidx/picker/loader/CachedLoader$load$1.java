package androidx.picker.loader;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "androidx.picker.loader.CachedLoader$load$1", f = "CachedLoader.kt", l = {29, 32}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class CachedLoader$load$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Object $key;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ CachedLoader this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CachedLoader$load$1(CachedLoader cachedLoader, Object obj, Continuation<? super CachedLoader$load$1> continuation) {
        super(2, continuation);
        this.this$0 = cachedLoader;
        this.$key = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        CachedLoader$load$1 cachedLoader$load$1 = new CachedLoader$load$1(this.this$0, this.$key, continuation);
        cachedLoader$load$1.L$0 = obj;
        return cachedLoader$load$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CachedLoader$load$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0046  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r6.label
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L21
            if (r1 == r4) goto L19
            if (r1 != r3) goto L11
            kotlin.ResultKt.throwOnFailure(r7)
            goto L62
        L11:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L19:
            java.lang.Object r1 = r6.L$0
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            kotlin.ResultKt.throwOnFailure(r7)
            goto L40
        L21:
            kotlin.ResultKt.throwOnFailure(r7)
            java.lang.Object r7 = r6.L$0
            r1 = r7
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            androidx.picker.loader.CachedLoader r7 = r6.this$0
            java.util.HashMap r7 = r7.cachedMap
            java.lang.Object r5 = r6.$key
            java.lang.Object r7 = r7.get(r5)
            if (r7 == 0) goto L43
            r6.L$0 = r1
            r6.label = r4
            java.lang.Object r7 = r1.emit(r7, r6)
            if (r7 != r0) goto L40
            return r0
        L40:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            goto L44
        L43:
            r7 = r2
        L44:
            if (r7 != 0) goto L62
            androidx.picker.loader.CachedLoader r7 = r6.this$0
            java.lang.Object r4 = r6.$key
            java.lang.Object r7 = r7.createValue(r4)
            androidx.picker.loader.CachedLoader r4 = r6.this$0
            java.lang.Object r5 = r6.$key
            java.util.HashMap r4 = r4.cachedMap
            r4.put(r5, r7)
            r6.L$0 = r2
            r6.label = r3
            java.lang.Object r6 = r1.emit(r7, r6)
            if (r6 != r0) goto L62
            return r0
        L62:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.picker.loader.CachedLoader$load$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
