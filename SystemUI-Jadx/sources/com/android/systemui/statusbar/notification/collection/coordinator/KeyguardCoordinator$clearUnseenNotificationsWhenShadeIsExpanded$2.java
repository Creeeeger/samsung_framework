package com.android.systemui.statusbar.notification.collection.coordinator;

import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.YieldKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$clearUnseenNotificationsWhenShadeIsExpanded$2", f = "KeyguardCoordinator.kt", l = {195}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class KeyguardCoordinator$clearUnseenNotificationsWhenShadeIsExpanded$2 extends SuspendLambda implements Function2 {
    /* synthetic */ boolean Z$0;
    int label;
    final /* synthetic */ KeyguardCoordinator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyguardCoordinator$clearUnseenNotificationsWhenShadeIsExpanded$2(KeyguardCoordinator keyguardCoordinator, Continuation<? super KeyguardCoordinator$clearUnseenNotificationsWhenShadeIsExpanded$2> continuation) {
        super(2, continuation);
        this.this$0 = keyguardCoordinator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        KeyguardCoordinator$clearUnseenNotificationsWhenShadeIsExpanded$2 keyguardCoordinator$clearUnseenNotificationsWhenShadeIsExpanded$2 = new KeyguardCoordinator$clearUnseenNotificationsWhenShadeIsExpanded$2(this.this$0, continuation);
        keyguardCoordinator$clearUnseenNotificationsWhenShadeIsExpanded$2.Z$0 = ((Boolean) obj).booleanValue();
        return keyguardCoordinator$clearUnseenNotificationsWhenShadeIsExpanded$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((KeyguardCoordinator$clearUnseenNotificationsWhenShadeIsExpanded$2) create(Boolean.valueOf(((Boolean) obj).booleanValue()), (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                z = this.Z$0;
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            boolean z2 = this.Z$0;
            this.Z$0 = z2;
            this.label = 1;
            if (YieldKt.yield(this) == coroutineSingletons) {
                return coroutineSingletons;
            }
            z = z2;
        }
        if (z) {
            LogBuffer.log$default(this.this$0.logger.buffer, "KeyguardCoordinator", LogLevel.DEBUG, "Notifications have been marked as seen due to shade expansion.", null, 8, null);
            this.this$0.unseenNotifications.clear();
        }
        return Unit.INSTANCE;
    }
}
