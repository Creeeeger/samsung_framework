package com.android.systemui.util;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.util.SparseArrayMapWrapper$entrySequence$1", f = "SparseArrayUtils.kt", l = {91}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class SparseArrayMapWrapper$entrySequence$1 extends RestrictedSuspendLambda implements Function2 {
    int I$0;
    int I$1;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ SparseArrayMapWrapper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SparseArrayMapWrapper$entrySequence$1(SparseArrayMapWrapper sparseArrayMapWrapper, Continuation<? super SparseArrayMapWrapper$entrySequence$1> continuation) {
        super(2, continuation);
        this.this$0 = sparseArrayMapWrapper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        SparseArrayMapWrapper$entrySequence$1 sparseArrayMapWrapper$entrySequence$1 = new SparseArrayMapWrapper$entrySequence$1(this.this$0, continuation);
        sparseArrayMapWrapper$entrySequence$1.L$0 = obj;
        return sparseArrayMapWrapper$entrySequence$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SparseArrayMapWrapper$entrySequence$1) create((SequenceScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0033  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x0054 -> B:5:0x0057). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r8.label
            r2 = 1
            if (r1 == 0) goto L1d
            if (r1 != r2) goto L15
            int r1 = r8.I$1
            int r3 = r8.I$0
            java.lang.Object r4 = r8.L$0
            kotlin.sequences.SequenceScope r4 = (kotlin.sequences.SequenceScope) r4
            kotlin.ResultKt.throwOnFailure(r9)
            goto L57
        L15:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L1d:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.Object r9 = r8.L$0
            kotlin.sequences.SequenceScope r9 = (kotlin.sequences.SequenceScope) r9
            com.android.systemui.util.SparseArrayMapWrapper r1 = r8.this$0
            android.util.SparseArray r1 = r1.sparseArray
            int r1 = r1.size()
            r3 = 0
            r4 = r9
            r7 = r3
            r3 = r1
            r1 = r7
        L31:
            if (r1 >= r3) goto L59
            com.android.systemui.util.SparseArrayMapWrapper r9 = r8.this$0
            android.util.SparseArray r9 = r9.sparseArray
            int r9 = r9.keyAt(r1)
            com.android.systemui.util.SparseArrayMapWrapper r5 = r8.this$0
            android.util.SparseArray r5 = r5.sparseArray
            java.lang.Object r5 = r5.get(r9)
            com.android.systemui.util.SparseArrayMapWrapper$Entry r6 = new com.android.systemui.util.SparseArrayMapWrapper$Entry
            r6.<init>(r9, r5)
            r8.L$0 = r4
            r8.I$0 = r3
            r8.I$1 = r1
            r8.label = r2
            kotlin.coroutines.intrinsics.CoroutineSingletons r9 = r4.yield(r6, r8)
            if (r9 != r0) goto L57
            return r0
        L57:
            int r1 = r1 + r2
            goto L31
        L59:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.util.SparseArrayMapWrapper$entrySequence$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
