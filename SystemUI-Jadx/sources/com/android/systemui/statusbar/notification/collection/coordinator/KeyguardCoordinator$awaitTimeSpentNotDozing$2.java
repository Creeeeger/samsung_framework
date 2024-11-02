package com.android.systemui.statusbar.notification.collection.coordinator;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$awaitTimeSpentNotDozing$2", f = "KeyguardCoordinator.kt", l = {173, 175}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class KeyguardCoordinator$awaitTimeSpentNotDozing$2 extends SuspendLambda implements Function3 {
    final /* synthetic */ long $duration;
    private /* synthetic */ Object L$0;
    /* synthetic */ boolean Z$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyguardCoordinator$awaitTimeSpentNotDozing$2(long j, Continuation<? super KeyguardCoordinator$awaitTimeSpentNotDozing$2> continuation) {
        super(3, continuation);
        this.$duration = j;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        boolean booleanValue = ((Boolean) obj2).booleanValue();
        KeyguardCoordinator$awaitTimeSpentNotDozing$2 keyguardCoordinator$awaitTimeSpentNotDozing$2 = new KeyguardCoordinator$awaitTimeSpentNotDozing$2(this.$duration, (Continuation) obj3);
        keyguardCoordinator$awaitTimeSpentNotDozing$2.L$0 = (FlowCollector) obj;
        keyguardCoordinator$awaitTimeSpentNotDozing$2.Z$0 = booleanValue;
        return keyguardCoordinator$awaitTimeSpentNotDozing$2.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0046 A[RETURN] */
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
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L20
            if (r1 == r3) goto L18
            if (r1 != r2) goto L10
            kotlin.ResultKt.throwOnFailure(r7)
            goto L47
        L10:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L18:
            java.lang.Object r1 = r6.L$0
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            kotlin.ResultKt.throwOnFailure(r7)
            goto L39
        L20:
            kotlin.ResultKt.throwOnFailure(r7)
            java.lang.Object r7 = r6.L$0
            r1 = r7
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            boolean r7 = r6.Z$0
            if (r7 != 0) goto L47
            long r4 = r6.$duration
            r6.L$0 = r1
            r6.label = r3
            java.lang.Object r7 = kotlinx.coroutines.DelayKt.m2580delayVtjQ1oo(r4, r6)
            if (r7 != r0) goto L39
            return r0
        L39:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            r3 = 0
            r6.L$0 = r3
            r6.label = r2
            java.lang.Object r6 = r1.emit(r7, r6)
            if (r6 != r0) goto L47
            return r0
        L47:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$awaitTimeSpentNotDozing$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
