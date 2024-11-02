package com.android.systemui.keyguard.data.repository;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.data.repository.LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$2", f = "LightRevealScrimRepository.kt", l = {190}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$2 extends SuspendLambda implements Function3 {
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;
    final /* synthetic */ LightRevealScrimRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$2(Continuation continuation, LightRevealScrimRepositoryImpl lightRevealScrimRepositoryImpl) {
        super(3, continuation);
        this.this$0 = lightRevealScrimRepositoryImpl;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$2 lightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$2 = new LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$2((Continuation) obj3, this.this$0);
        lightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$2.L$0 = (FlowCollector) obj;
        lightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$2.L$1 = obj2;
        return lightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$2.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0075 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0055  */
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
            r2 = 1
            if (r1 == 0) goto L16
            if (r1 != r2) goto Le
            kotlin.ResultKt.throwOnFailure(r7)
            goto L76
        Le:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L16:
            kotlin.ResultKt.throwOnFailure(r7)
            java.lang.Object r7 = r6.L$0
            kotlinx.coroutines.flow.FlowCollector r7 = (kotlinx.coroutines.flow.FlowCollector) r7
            java.lang.Object r1 = r6.L$1
            com.android.systemui.keyguard.shared.model.WakefulnessModel r1 = (com.android.systemui.keyguard.shared.model.WakefulnessModel) r1
            com.android.systemui.keyguard.shared.model.WakefulnessState r3 = r1.state
            com.android.systemui.keyguard.shared.model.WakefulnessState r4 = com.android.systemui.keyguard.shared.model.WakefulnessState.STARTING_TO_SLEEP
            r5 = 0
            if (r3 != r4) goto L2a
            r4 = r2
            goto L2b
        L2a:
            r4 = r5
        L2b:
            com.android.systemui.keyguard.shared.model.WakeSleepReason r1 = r1.lastWakeReason
            if (r4 == 0) goto L35
            com.android.systemui.keyguard.shared.model.WakeSleepReason r4 = com.android.systemui.keyguard.shared.model.WakeSleepReason.POWER_BUTTON
            if (r1 != r4) goto L35
            r4 = r2
            goto L36
        L35:
            r4 = r5
        L36:
            if (r4 != 0) goto L4d
            com.android.systemui.keyguard.shared.model.WakefulnessState r4 = com.android.systemui.keyguard.shared.model.WakefulnessState.STARTING_TO_WAKE
            if (r3 != r4) goto L3e
            r4 = r2
            goto L3f
        L3e:
            r4 = r5
        L3f:
            if (r4 == 0) goto L47
            com.android.systemui.keyguard.shared.model.WakeSleepReason r4 = com.android.systemui.keyguard.shared.model.WakeSleepReason.POWER_BUTTON
            if (r1 != r4) goto L47
            r4 = r2
            goto L48
        L47:
            r4 = r5
        L48:
            if (r4 == 0) goto L4b
            goto L4d
        L4b:
            r4 = r5
            goto L4e
        L4d:
            r4 = r2
        L4e:
            if (r4 == 0) goto L55
            com.android.systemui.keyguard.data.repository.LightRevealScrimRepositoryImpl r1 = r6.this$0
            kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2 r1 = r1.powerButtonRevealEffect
            goto L6d
        L55:
            com.android.systemui.keyguard.shared.model.WakefulnessState r4 = com.android.systemui.keyguard.shared.model.WakefulnessState.STARTING_TO_WAKE
            if (r3 != r4) goto L5e
            com.android.systemui.keyguard.shared.model.WakeSleepReason r3 = com.android.systemui.keyguard.shared.model.WakeSleepReason.TAP
            if (r1 != r3) goto L5e
            r5 = r2
        L5e:
            if (r5 == 0) goto L65
            com.android.systemui.keyguard.data.repository.LightRevealScrimRepositoryImpl r1 = r6.this$0
            com.android.systemui.keyguard.data.repository.LightRevealScrimRepositoryImpl$special$$inlined$map$1 r1 = r1.tapRevealEffect
            goto L6d
        L65:
            com.android.systemui.statusbar.LiftReveal r1 = com.android.systemui.statusbar.LiftReveal.INSTANCE
            kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2 r3 = new kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2
            r3.<init>(r1)
            r1 = r3
        L6d:
            r6.label = r2
            java.lang.Object r6 = kotlinx.coroutines.flow.FlowKt.emitAll(r6, r1, r7)
            if (r6 != r0) goto L76
            return r0
        L76:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.data.repository.LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
