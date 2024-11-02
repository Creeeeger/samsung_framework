package com.android.systemui.dump;

import java.io.PrintWriter;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.dump.DumpManager$dumpTarget$1", f = "DumpManager.kt", l = {169, 172, 176}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DumpManager$dumpTarget$1 extends RestrictedSuspendLambda implements Function2 {
    final /* synthetic */ String[] $args;
    final /* synthetic */ PrintWriter $pw;
    final /* synthetic */ int $tailLength;
    final /* synthetic */ String $target;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ DumpManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DumpManager$dumpTarget$1(DumpManager dumpManager, String str, PrintWriter printWriter, String[] strArr, int i, Continuation<? super DumpManager$dumpTarget$1> continuation) {
        super(2, continuation);
        this.this$0 = dumpManager;
        this.$target = str;
        this.$pw = printWriter;
        this.$args = strArr;
        this.$tailLength = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DumpManager$dumpTarget$1 dumpManager$dumpTarget$1 = new DumpManager$dumpTarget$1(this.this$0, this.$target, this.$pw, this.$args, this.$tailLength, continuation);
        dumpManager$dumpTarget$1.L$0 = obj;
        return dumpManager$dumpTarget$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DumpManager$dumpTarget$1) create((SequenceScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0098  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r9.label
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L2c
            if (r1 == r4) goto L24
            if (r1 == r3) goto L1c
            if (r1 != r2) goto L14
            kotlin.ResultKt.throwOnFailure(r10)
            goto Lb6
        L14:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L1c:
            java.lang.Object r1 = r9.L$0
            kotlin.sequences.SequenceScope r1 = (kotlin.sequences.SequenceScope) r1
            kotlin.ResultKt.throwOnFailure(r10)
            goto L8a
        L24:
            java.lang.Object r1 = r9.L$0
            kotlin.sequences.SequenceScope r1 = (kotlin.sequences.SequenceScope) r1
            kotlin.ResultKt.throwOnFailure(r10)
            goto L5f
        L2c:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.Object r10 = r9.L$0
            kotlin.sequences.SequenceScope r10 = (kotlin.sequences.SequenceScope) r10
            com.android.systemui.dump.DumpManager r1 = r9.this$0
            java.util.Map r5 = r1.dumpables
            java.lang.String r6 = r9.$target
            java.lang.Object r1 = com.android.systemui.dump.DumpManager.access$findBestTargetMatch(r1, r5, r6)
            com.android.systemui.dump.RegisteredDumpable r1 = (com.android.systemui.dump.RegisteredDumpable) r1
            if (r1 == 0) goto L5e
            com.android.systemui.dump.DumpManager r5 = r9.this$0
            java.io.PrintWriter r6 = r9.$pw
            java.lang.String[] r7 = r9.$args
            com.android.systemui.dump.DumpManager$dumpTarget$1$1$1 r8 = new com.android.systemui.dump.DumpManager$dumpTarget$1$1$1
            r8.<init>()
            kotlin.Pair r5 = new kotlin.Pair
            java.lang.String r1 = r1.name
            r5.<init>(r1, r8)
            r9.L$0 = r10
            r9.label = r4
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = r10.yield(r5, r9)
            if (r1 != r0) goto L5e
            return r0
        L5e:
            r1 = r10
        L5f:
            com.android.systemui.dump.DumpManager r10 = r9.this$0
            java.util.Map r4 = r10.buffers
            java.lang.String r5 = r9.$target
            java.lang.Object r10 = com.android.systemui.dump.DumpManager.access$findBestTargetMatch(r10, r4, r5)
            com.android.systemui.dump.RegisteredDumpable r10 = (com.android.systemui.dump.RegisteredDumpable) r10
            if (r10 == 0) goto L8a
            com.android.systemui.dump.DumpManager r4 = r9.this$0
            java.io.PrintWriter r5 = r9.$pw
            int r6 = r9.$tailLength
            com.android.systemui.dump.DumpManager$dumpTarget$1$2$1 r7 = new com.android.systemui.dump.DumpManager$dumpTarget$1$2$1
            r7.<init>()
            kotlin.Pair r4 = new kotlin.Pair
            java.lang.String r10 = r10.name
            r4.<init>(r10, r7)
            r9.L$0 = r1
            r9.label = r3
            kotlin.coroutines.intrinsics.CoroutineSingletons r10 = r1.yield(r4, r9)
            if (r10 != r0) goto L8a
            return r0
        L8a:
            com.android.systemui.dump.DumpManager r10 = r9.this$0
            java.util.Map r3 = r10.nsDumpables
            java.lang.String r4 = r9.$target
            java.lang.Object r10 = com.android.systemui.dump.DumpManager.access$findBestTargetMatch(r10, r3, r4)
            com.android.systemui.dump.RegisteredDumpable r10 = (com.android.systemui.dump.RegisteredDumpable) r10
            if (r10 == 0) goto Lb6
            com.android.systemui.dump.DumpManager r3 = r9.this$0
            java.io.PrintWriter r4 = r9.$pw
            java.lang.String[] r5 = r9.$args
            com.android.systemui.dump.DumpManager$dumpTarget$1$3$1 r6 = new com.android.systemui.dump.DumpManager$dumpTarget$1$3$1
            r6.<init>()
            kotlin.Pair r3 = new kotlin.Pair
            java.lang.String r10 = r10.name
            r3.<init>(r10, r6)
            r10 = 0
            r9.L$0 = r10
            r9.label = r2
            kotlin.coroutines.intrinsics.CoroutineSingletons r9 = r1.yield(r3, r9)
            if (r9 != r0) goto Lb6
            return r0
        Lb6:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.dump.DumpManager$dumpTarget$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
