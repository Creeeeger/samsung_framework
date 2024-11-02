package com.android.systemui.statusbar.notification.collection.coordinator;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1", f = "KeyguardCoordinator.kt", l = {127, 130, 133}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1 extends SuspendLambda implements Function3 {
    private /* synthetic */ Object L$0;
    /* synthetic */ boolean Z$0;
    int label;
    final /* synthetic */ KeyguardCoordinator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1(KeyguardCoordinator keyguardCoordinator, Continuation<? super KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1> continuation) {
        super(3, continuation);
        this.this$0 = keyguardCoordinator;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        boolean booleanValue = ((Boolean) obj2).booleanValue();
        KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1 keyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1 = new KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1(this.this$0, (Continuation) obj3);
        keyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1.L$0 = (FlowCollector) obj;
        keyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1.Z$0 = booleanValue;
        return keyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0060 A[RETURN] */
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
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L24
            if (r1 == r4) goto L20
            if (r1 == r3) goto L18
            if (r1 != r2) goto L10
            goto L20
        L10:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L18:
            java.lang.Object r1 = r5.L$0
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            kotlin.ResultKt.throwOnFailure(r6)
            goto L48
        L20:
            kotlin.ResultKt.throwOnFailure(r6)
            goto L61
        L24:
            kotlin.ResultKt.throwOnFailure(r6)
            java.lang.Object r6 = r5.L$0
            r1 = r6
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            boolean r6 = r5.Z$0
            if (r6 == 0) goto L3b
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            r5.label = r4
            java.lang.Object r5 = r1.emit(r6, r5)
            if (r5 != r0) goto L61
            return r0
        L3b:
            java.lang.Boolean r6 = java.lang.Boolean.TRUE
            r5.L$0 = r1
            r5.label = r3
            java.lang.Object r6 = r1.emit(r6, r5)
            if (r6 != r0) goto L48
            return r0
        L48:
            com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator r6 = r5.this$0
            com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository r6 = r6.keyguardTransitionRepository
            com.android.systemui.keyguard.data.repository.KeyguardTransitionRepositoryImpl r6 = (com.android.systemui.keyguard.data.repository.KeyguardTransitionRepositoryImpl) r6
            kotlinx.coroutines.flow.Flow r6 = r6.transitions
            com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1$invokeSuspend$$inlined$map$1 r3 = new com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1$invokeSuspend$$inlined$map$1
            r3.<init>()
            r6 = 0
            r5.L$0 = r6
            r5.label = r2
            java.lang.Object r5 = kotlinx.coroutines.flow.FlowKt.emitAll(r5, r3, r1)
            if (r5 != r0) goto L61
            return r0
        L61:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
