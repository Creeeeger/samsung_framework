package com.android.systemui.log.table;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.log.table.TableLogBuffer$init$1", f = "TableLogBuffer.kt", l = {126}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class TableLogBuffer$init$1 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ TableLogBuffer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TableLogBuffer$init$1(TableLogBuffer tableLogBuffer, Continuation<? super TableLogBuffer$init$1> continuation) {
        super(2, continuation);
        this.this$0 = tableLogBuffer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TableLogBuffer$init$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TableLogBuffer$init$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x002c -> B:5:0x002f). Please report as a decompilation issue!!! */
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
            if (r1 == 0) goto L15
            if (r1 != r2) goto Ld
            kotlin.ResultKt.throwOnFailure(r9)
            goto L2f
        Ld:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L15:
            kotlin.ResultKt.throwOnFailure(r9)
        L18:
            com.android.systemui.log.table.TableLogBuffer r9 = r8.this$0
            kotlinx.coroutines.channels.AbstractChannel r9 = r9.logMessageChannel
            boolean r9 = r9.isClosedForReceive()
            if (r9 != 0) goto L8a
            com.android.systemui.log.table.TableLogBuffer r9 = r8.this$0
            kotlinx.coroutines.channels.AbstractChannel r9 = r9.logMessageChannel
            r8.label = r2
            java.lang.Object r9 = r9.receive(r8)
            if (r9 != r0) goto L2f
            return r0
        L2f:
            com.android.systemui.log.table.TableChange r9 = (com.android.systemui.log.table.TableChange) r9
            com.android.systemui.log.table.TableLogBuffer r1 = r8.this$0
            r1.getClass()
            com.android.systemui.log.LogLevel r3 = com.android.systemui.log.LogLevel.DEBUG
            com.android.systemui.log.LogcatEchoTracker r4 = r1.logcatEchoTracker
            java.lang.String r5 = r1.name
            boolean r6 = r4.isBufferLoggable(r5, r3)
            if (r6 != 0) goto L4a
            java.lang.String r6 = r9.columnName
            boolean r3 = r4.isTagLoggable(r6, r3)
            if (r3 == 0) goto L18
        L4a:
            boolean r3 = r9.hasData()
            if (r3 == 0) goto L18
            android.icu.text.SimpleDateFormat r3 = com.android.systemui.log.table.TableLogBufferKt.TABLE_LOG_DATE_FORMAT
            long r6 = r9.timestamp
            java.lang.Long r4 = java.lang.Long.valueOf(r6)
            java.lang.String r3 = r3.format(r4)
            java.lang.String r4 = r9.getName()
            java.lang.String r9 = r9.getVal()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r6.append(r3)
            java.lang.String r3 = "|"
            r6.append(r3)
            r6.append(r4)
            r6.append(r3)
            r6.append(r9)
            java.lang.String r9 = r6.toString()
            com.android.systemui.log.table.LogProxy r1 = r1.localLogcat
            com.android.systemui.log.table.LogProxyDefault r1 = (com.android.systemui.log.table.LogProxyDefault) r1
            r1.getClass()
            android.util.Log.d(r5, r9)
            goto L18
        L8a:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.log.table.TableLogBuffer$init$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
