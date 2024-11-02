package com.android.wm.shell.bubbles;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.wm.shell.bubbles.BubbleDataRepository$persistToDisk$1", f = "BubbleDataRepository.kt", l = {136, 138}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class BubbleDataRepository$persistToDisk$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Job $prev;
    int label;
    final /* synthetic */ BubbleDataRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BubbleDataRepository$persistToDisk$1(Job job, BubbleDataRepository bubbleDataRepository, Continuation<? super BubbleDataRepository$persistToDisk$1> continuation) {
        super(2, continuation);
        this.$prev = job;
        this.this$0 = bubbleDataRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BubbleDataRepository$persistToDisk$1(this.$prev, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BubbleDataRepository$persistToDisk$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0047 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r5.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1c
            if (r1 == r3) goto L18
            if (r1 != r2) goto L10
            kotlin.ResultKt.throwOnFailure(r6)
            goto L40
        L10:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L18:
            kotlin.ResultKt.throwOnFailure(r6)
            goto L37
        L1c:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.Job r6 = r5.$prev
            if (r6 == 0) goto L37
            r5.label = r3
            r1 = 0
            r6.cancel(r1)
            kotlinx.coroutines.JobSupport r6 = (kotlinx.coroutines.JobSupport) r6
            java.lang.Object r6 = r6.join(r5)
            if (r6 != r0) goto L32
            goto L34
        L32:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
        L34:
            if (r6 != r0) goto L37
            return r0
        L37:
            r5.label = r2
            java.lang.Object r6 = kotlinx.coroutines.YieldKt.yield(r5)
            if (r6 != r0) goto L40
            return r0
        L40:
            com.android.wm.shell.bubbles.BubbleDataRepository r5 = r5.this$0
            com.android.wm.shell.bubbles.storage.BubblePersistentRepository r6 = r5.persistentRepository
            com.android.wm.shell.bubbles.storage.BubbleVolatileRepository r5 = r5.volatileRepository
            monitor-enter(r5)
            android.util.SparseArray r0 = new android.util.SparseArray     // Catch: java.lang.Throwable -> La2
            r0.<init>()     // Catch: java.lang.Throwable -> La2
            android.util.SparseArray r1 = r5.entitiesByUser     // Catch: java.lang.Throwable -> La2
            int r1 = r1.size()     // Catch: java.lang.Throwable -> La2
            r2 = 0
        L53:
            if (r2 >= r1) goto L6d
            android.util.SparseArray r3 = r5.entitiesByUser     // Catch: java.lang.Throwable -> La2
            int r3 = r3.keyAt(r2)     // Catch: java.lang.Throwable -> La2
            android.util.SparseArray r4 = r5.entitiesByUser     // Catch: java.lang.Throwable -> La2
            java.lang.Object r4 = r4.valueAt(r2)     // Catch: java.lang.Throwable -> La2
            java.util.List r4 = (java.util.List) r4     // Catch: java.lang.Throwable -> La2
            java.util.List r4 = kotlin.collections.CollectionsKt___CollectionsKt.toList(r4)     // Catch: java.lang.Throwable -> La2
            r0.put(r3, r4)     // Catch: java.lang.Throwable -> La2
            int r2 = r2 + 1
            goto L53
        L6d:
            monitor-exit(r5)
            android.util.AtomicFile r5 = r6.bubbleFile
            monitor-enter(r5)
            android.util.AtomicFile r1 = r6.bubbleFile     // Catch: java.lang.Throwable -> L92 java.io.IOException -> L94
            java.io.FileOutputStream r1 = r1.startWrite()     // Catch: java.lang.Throwable -> L92 java.io.IOException -> L94
            com.android.wm.shell.bubbles.storage.BubbleXmlHelperKt.writeXml(r1, r0)     // Catch: java.lang.Exception -> L81 java.lang.Throwable -> L92
            android.util.AtomicFile r0 = r6.bubbleFile     // Catch: java.lang.Exception -> L81 java.lang.Throwable -> L92
            r0.finishWrite(r1)     // Catch: java.lang.Exception -> L81 java.lang.Throwable -> L92
            monitor-exit(r5)
            goto L9d
        L81:
            r0 = move-exception
            java.lang.String r2 = "BubblePersistentRepository"
            java.lang.String r3 = "Failed to save bubble file, restoring backup"
            android.util.Log.e(r2, r3, r0)     // Catch: java.lang.Throwable -> L92
            android.util.AtomicFile r6 = r6.bubbleFile     // Catch: java.lang.Throwable -> L92
            r6.failWrite(r1)     // Catch: java.lang.Throwable -> L92
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L92
            monitor-exit(r5)
            goto L9d
        L92:
            r6 = move-exception
            goto La0
        L94:
            r6 = move-exception
            java.lang.String r0 = "BubblePersistentRepository"
            java.lang.String r1 = "Failed to save bubble file"
            android.util.Log.e(r0, r1, r6)     // Catch: java.lang.Throwable -> L92
            monitor-exit(r5)
        L9d:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        La0:
            monitor-exit(r5)
            throw r6
        La2:
            r6 = move-exception
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.bubbles.BubbleDataRepository$persistToDisk$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
