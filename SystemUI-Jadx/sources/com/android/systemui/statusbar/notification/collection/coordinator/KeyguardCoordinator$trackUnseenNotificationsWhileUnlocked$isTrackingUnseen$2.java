package com.android.systemui.statusbar.notification.collection.coordinator;

import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$2", f = "KeyguardCoordinator.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$2 extends SuspendLambda implements Function2 {
    /* synthetic */ boolean Z$0;
    int label;
    final /* synthetic */ KeyguardCoordinator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$2(KeyguardCoordinator keyguardCoordinator, Continuation<? super KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$2> continuation) {
        super(2, continuation);
        this.this$0 = keyguardCoordinator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$2 keyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$2 = new KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$2(this.this$0, continuation);
        keyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$2.Z$0 = ((Boolean) obj).booleanValue();
        return keyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$2) create(Boolean.valueOf(((Boolean) obj).booleanValue()), (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            boolean z = this.Z$0;
            KeyguardCoordinatorLogger keyguardCoordinatorLogger = this.this$0.logger;
            keyguardCoordinatorLogger.getClass();
            LogLevel logLevel = LogLevel.DEBUG;
            KeyguardCoordinatorLogger$logTrackingUnseen$2 keyguardCoordinatorLogger$logTrackingUnseen$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinatorLogger$logTrackingUnseen$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    String str;
                    if (((LogMessage) obj2).getBool1()) {
                        str = "Start";
                    } else {
                        str = "Stop";
                    }
                    return str.concat(" tracking unseen notifications.");
                }
            };
            LogBuffer logBuffer = keyguardCoordinatorLogger.buffer;
            LogMessage obtain = logBuffer.obtain("KeyguardCoordinator", logLevel, keyguardCoordinatorLogger$logTrackingUnseen$2, null);
            obtain.setBool1(z);
            logBuffer.commit(obtain);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
