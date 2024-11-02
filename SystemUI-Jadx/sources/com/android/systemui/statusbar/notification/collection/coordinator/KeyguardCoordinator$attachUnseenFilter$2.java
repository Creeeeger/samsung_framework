package com.android.systemui.statusbar.notification.collection.coordinator;

import com.android.systemui.util.settings.SettingsProxyExt;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$attachUnseenFilter$2", f = "KeyguardCoordinator.kt", l = {113}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class KeyguardCoordinator$attachUnseenFilter$2 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ KeyguardCoordinator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyguardCoordinator$attachUnseenFilter$2(KeyguardCoordinator keyguardCoordinator, Continuation<? super KeyguardCoordinator$attachUnseenFilter$2> continuation) {
        super(2, continuation);
        this.this$0 = keyguardCoordinator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new KeyguardCoordinator$attachUnseenFilter$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((KeyguardCoordinator$attachUnseenFilter$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
            int i2 = KeyguardCoordinator.$r8$clinit;
            keyguardCoordinator.getClass();
            SettingsProxyExt.INSTANCE.getClass();
            final FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 = new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(new KeyguardCoordinator$invalidateWhenUnseenSettingChanges$2(null), SettingsProxyExt.observerFlow(keyguardCoordinator.secureSettings, -1, "lock_screen_show_only_unseen_notifications"));
            Object collect = FlowKt.buffer$default(FlowKt.flowOn(new Flow() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$invalidateWhenUnseenSettingChanges$$inlined$map$1

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                /* renamed from: com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$invalidateWhenUnseenSettingChanges$$inlined$map$1$2, reason: invalid class name */
                /* loaded from: classes2.dex */
                public final class AnonymousClass2 implements FlowCollector {
                    public final /* synthetic */ FlowCollector $this_unsafeFlow;
                    public final /* synthetic */ KeyguardCoordinator this$0;

                    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                    @DebugMetadata(c = "com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$invalidateWhenUnseenSettingChanges$$inlined$map$1$2", f = "KeyguardCoordinator.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                    /* renamed from: com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$invalidateWhenUnseenSettingChanges$$inlined$map$1$2$1, reason: invalid class name */
                    /* loaded from: classes2.dex */
                    public final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= VideoPlayer.MEDIA_ERROR_SYSTEM;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector, KeyguardCoordinator keyguardCoordinator) {
                        this.$this_unsafeFlow = flowCollector;
                        this.this$0 = keyguardCoordinator;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
                    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                    */
                    public final java.lang.Object emit(java.lang.Object r5, kotlin.coroutines.Continuation r6) {
                        /*
                            r4 = this;
                            boolean r0 = r6 instanceof com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$invalidateWhenUnseenSettingChanges$$inlined$map$1.AnonymousClass2.AnonymousClass1
                            if (r0 == 0) goto L13
                            r0 = r6
                            com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$invalidateWhenUnseenSettingChanges$$inlined$map$1$2$1 r0 = (com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$invalidateWhenUnseenSettingChanges$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                            int r1 = r0.label
                            r2 = -2147483648(0xffffffff80000000, float:-0.0)
                            r3 = r1 & r2
                            if (r3 == 0) goto L13
                            int r1 = r1 - r2
                            r0.label = r1
                            goto L18
                        L13:
                            com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$invalidateWhenUnseenSettingChanges$$inlined$map$1$2$1 r0 = new com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$invalidateWhenUnseenSettingChanges$$inlined$map$1$2$1
                            r0.<init>(r6)
                        L18:
                            java.lang.Object r6 = r0.result
                            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                            int r2 = r0.label
                            r3 = 1
                            if (r2 == 0) goto L2f
                            if (r2 != r3) goto L27
                            kotlin.ResultKt.throwOnFailure(r6)
                            goto L59
                        L27:
                            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                            r4.<init>(r5)
                            throw r4
                        L2f:
                            kotlin.ResultKt.throwOnFailure(r6)
                            kotlin.Unit r5 = (kotlin.Unit) r5
                            com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator r5 = r4.this$0
                            com.android.systemui.util.settings.SecureSettings r5 = r5.secureSettings
                            com.android.systemui.util.settings.SecureSettingsImpl r5 = (com.android.systemui.util.settings.SecureSettingsImpl) r5
                            r6 = -2
                            java.lang.String r2 = "lock_screen_show_only_unseen_notifications"
                            java.lang.String r5 = r5.getStringForUser(r6, r2)
                            int r5 = java.lang.Integer.parseInt(r5)     // Catch: java.lang.NumberFormatException -> L5c
                            if (r5 != r3) goto L49
                            r5 = r3
                            goto L4a
                        L49:
                            r5 = 0
                        L4a:
                            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
                            r0.label = r3
                            kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                            java.lang.Object r4 = r4.emit(r5, r0)
                            if (r4 != r1) goto L59
                            return r1
                        L59:
                            kotlin.Unit r4 = kotlin.Unit.INSTANCE
                            return r4
                        L5c:
                            android.provider.Settings$SettingNotFoundException r4 = new android.provider.Settings$SettingNotFoundException
                            r4.<init>(r2)
                            throw r4
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$invalidateWhenUnseenSettingChanges$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                    Object collect2 = Flow.this.collect(new AnonymousClass2(flowCollector, keyguardCoordinator), continuation);
                    if (collect2 == CoroutineSingletons.COROUTINE_SUSPENDED) {
                        return collect2;
                    }
                    return Unit.INSTANCE;
                }
            }, keyguardCoordinator.bgDispatcher), -1).collect(new FlowCollector() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$invalidateWhenUnseenSettingChanges$4
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    boolean booleanValue = ((Boolean) obj2).booleanValue();
                    KeyguardCoordinator keyguardCoordinator2 = KeyguardCoordinator.this;
                    if (booleanValue != keyguardCoordinator2.unseenFilterEnabled) {
                        keyguardCoordinator2.unseenFilterEnabled = booleanValue;
                        keyguardCoordinator2.unseenNotifFilter.invalidateList("unseen setting changed");
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
