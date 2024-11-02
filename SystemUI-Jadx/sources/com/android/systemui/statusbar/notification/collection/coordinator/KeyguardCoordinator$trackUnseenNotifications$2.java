package com.android.systemui.statusbar.notification.collection.coordinator;

import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.statusbar.StatusBarStateControllerExtKt;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.policy.HeadsUpManager;
import com.android.systemui.statusbar.policy.HeadsUpManagerExtKt;
import java.util.function.Consumer;
import java.util.function.Predicate;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$trackUnseenNotifications$2", f = "KeyguardCoordinator.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class KeyguardCoordinator$trackUnseenNotifications$2 extends SuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ KeyguardCoordinator this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$trackUnseenNotifications$2$1", f = "KeyguardCoordinator.kt", l = {186}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$trackUnseenNotifications$2$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        int label;
        final /* synthetic */ KeyguardCoordinator this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(KeyguardCoordinator keyguardCoordinator, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = keyguardCoordinator;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ResultKt.throwOnFailure(obj);
                KeyguardCoordinator keyguardCoordinator = this.this$0;
                this.label = 1;
                Object collectLatest = FlowKt.collectLatest(StatusBarStateControllerExtKt.getExpansionChanges(keyguardCoordinator.statusBarStateController), new KeyguardCoordinator$clearUnseenNotificationsWhenShadeIsExpanded$2(keyguardCoordinator, null), this);
                if (collectLatest != obj2) {
                    collectLatest = Unit.INSTANCE;
                }
                if (collectLatest == obj2) {
                    return obj2;
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$trackUnseenNotifications$2$2", f = "KeyguardCoordinator.kt", l = {187}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$trackUnseenNotifications$2$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass2 extends SuspendLambda implements Function2 {
        int label;
        final /* synthetic */ KeyguardCoordinator this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(KeyguardCoordinator keyguardCoordinator, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = keyguardCoordinator;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ResultKt.throwOnFailure(obj);
                final KeyguardCoordinator keyguardCoordinator = this.this$0;
                this.label = 1;
                HeadsUpManager headsUpManager = keyguardCoordinator.headsUpManager;
                headsUpManager.getAllEntries().filter(new Predicate() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$markHeadsUpNotificationsAsSeen$2
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj2) {
                        return ((NotificationEntry) obj2).isRowPinned();
                    }
                }).forEach(new Consumer() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$markHeadsUpNotificationsAsSeen$3
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj2) {
                        KeyguardCoordinator.this.unseenNotifications.remove((NotificationEntry) obj2);
                    }
                });
                Object collect = HeadsUpManagerExtKt.getHeadsUpEvents(headsUpManager).collect(new FlowCollector() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$markHeadsUpNotificationsAsSeen$4
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj2, Continuation continuation) {
                        Pair pair = (Pair) obj2;
                        NotificationEntry notificationEntry = (NotificationEntry) pair.component1();
                        if (((Boolean) pair.component2()).booleanValue()) {
                            KeyguardCoordinator keyguardCoordinator2 = KeyguardCoordinator.this;
                            KeyguardCoordinatorLogger keyguardCoordinatorLogger = keyguardCoordinator2.logger;
                            String str = notificationEntry.mKey;
                            keyguardCoordinatorLogger.getClass();
                            LogLevel logLevel = LogLevel.DEBUG;
                            KeyguardCoordinatorLogger$logUnseenHun$2 keyguardCoordinatorLogger$logUnseenHun$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinatorLogger$logUnseenHun$2
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj3) {
                                    return KeyAttributes$$ExternalSyntheticOutline0.m("Unseen notif has become heads up: ", ((LogMessage) obj3).getStr1());
                                }
                            };
                            LogBuffer logBuffer = keyguardCoordinatorLogger.buffer;
                            LogMessage obtain = logBuffer.obtain("KeyguardCoordinator", logLevel, keyguardCoordinatorLogger$logUnseenHun$2, null);
                            obtain.setStr1(str);
                            logBuffer.commit(obtain);
                            keyguardCoordinator2.unseenNotifications.remove(notificationEntry);
                        }
                        return Unit.INSTANCE;
                    }
                }, this);
                if (collect != coroutineSingletons) {
                    collect = Unit.INSTANCE;
                }
                if (collect == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyguardCoordinator$trackUnseenNotifications$2(KeyguardCoordinator keyguardCoordinator, Continuation<? super KeyguardCoordinator$trackUnseenNotifications$2> continuation) {
        super(2, continuation);
        this.this$0 = keyguardCoordinator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        KeyguardCoordinator$trackUnseenNotifications$2 keyguardCoordinator$trackUnseenNotifications$2 = new KeyguardCoordinator$trackUnseenNotifications$2(this.this$0, continuation);
        keyguardCoordinator$trackUnseenNotifications$2.L$0 = obj;
        return keyguardCoordinator$trackUnseenNotifications$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((KeyguardCoordinator$trackUnseenNotifications$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass1(this.this$0, null), 3);
            return BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass2(this.this$0, null), 3);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
