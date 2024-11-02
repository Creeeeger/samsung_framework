package com.android.systemui.statusbar.notification.collection.coordinator;

import com.android.systemui.keyguard.data.repository.KeyguardRepositoryImpl;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$2", f = "KeyguardCoordinator.kt", l = {152, 162}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ Ref$BooleanRef $clearUnseenOnBeginTracking;
    /* synthetic */ boolean Z$0;
    int label;
    final /* synthetic */ KeyguardCoordinator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$2(KeyguardCoordinator keyguardCoordinator, Ref$BooleanRef ref$BooleanRef, Continuation<? super KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$2> continuation) {
        super(2, continuation);
        this.this$0 = keyguardCoordinator;
        this.$clearUnseenOnBeginTracking = ref$BooleanRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$2 keyguardCoordinator$trackUnseenNotificationsWhileUnlocked$2 = new KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$2(this.this$0, this.$clearUnseenOnBeginTracking, continuation);
        keyguardCoordinator$trackUnseenNotificationsWhileUnlocked$2.Z$0 = ((Boolean) obj).booleanValue();
        return keyguardCoordinator$trackUnseenNotificationsWhileUnlocked$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$2) create(Boolean.valueOf(((Boolean) obj).booleanValue()), (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.throwOnFailure(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ResultKt.throwOnFailure(obj);
                this.$clearUnseenOnBeginTracking.element = true;
                LogBuffer.log$default(this.this$0.logger.buffer, "KeyguardCoordinator", LogLevel.DEBUG, "Notifications on lockscreen will be marked as seen when unlocked.", null, 8, null);
            }
        } else {
            ResultKt.throwOnFailure(obj);
            if (!this.Z$0) {
                KeyguardCoordinator keyguardCoordinator = this.this$0;
                long j = KeyguardCoordinator.SEEN_TIMEOUT;
                this.label = 1;
                Object first = FlowKt.first(FlowKt.transformLatest(((KeyguardRepositoryImpl) keyguardCoordinator.keyguardRepository).isDozing, new KeyguardCoordinator$awaitTimeSpentNotDozing$2(j, null)), this);
                if (first != obj2) {
                    first = Unit.INSTANCE;
                }
                if (first == obj2) {
                    return obj2;
                }
                this.$clearUnseenOnBeginTracking.element = true;
                LogBuffer.log$default(this.this$0.logger.buffer, "KeyguardCoordinator", LogLevel.DEBUG, "Notifications on lockscreen will be marked as seen when unlocked.", null, 8, null);
            } else {
                Ref$BooleanRef ref$BooleanRef = this.$clearUnseenOnBeginTracking;
                if (ref$BooleanRef.element) {
                    ref$BooleanRef.element = false;
                    LogBuffer.log$default(this.this$0.logger.buffer, "KeyguardCoordinator", LogLevel.DEBUG, "Notifications have been marked as seen now that device is unlocked.", null, 8, null);
                    this.this$0.unseenNotifications.clear();
                }
                invalidateList("keyguard no longer showing");
                KeyguardCoordinator keyguardCoordinator2 = this.this$0;
                this.label = 2;
                keyguardCoordinator2.getClass();
                Object coroutineScope = CoroutineScopeKt.coroutineScope(new KeyguardCoordinator$trackUnseenNotifications$2(keyguardCoordinator2, null), this);
                if (coroutineScope != obj2) {
                    coroutineScope = Unit.INSTANCE;
                }
                if (coroutineScope == obj2) {
                    return obj2;
                }
            }
        }
        return Unit.INSTANCE;
    }
}
