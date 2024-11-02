package com.android.systemui.statusbar.notification.row.ui.viewbinder;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.RepeatOnLifecycleKt;
import com.android.systemui.statusbar.notification.row.ActivatableNotificationView;
import com.android.systemui.statusbar.notification.row.ui.viewmodel.ActivatableNotificationViewModel;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.notification.row.ui.viewbinder.ActivatableNotificationViewBinder$bind$1", f = "ActivatableNotificationViewBinder.kt", l = {43}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class ActivatableNotificationViewBinder$bind$1 extends SuspendLambda implements Function3 {
    final /* synthetic */ TouchHandler $touchHandler;
    final /* synthetic */ ActivatableNotificationView $view;
    final /* synthetic */ ActivatableNotificationViewModel $viewModel;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.statusbar.notification.row.ui.viewbinder.ActivatableNotificationViewBinder$bind$1$1", f = "ActivatableNotificationViewBinder.kt", l = {49}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.statusbar.notification.row.ui.viewbinder.ActivatableNotificationViewBinder$bind$1$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ TouchHandler $touchHandler;
        final /* synthetic */ ActivatableNotificationView $view;
        final /* synthetic */ ActivatableNotificationViewModel $viewModel;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.statusbar.notification.row.ui.viewbinder.ActivatableNotificationViewBinder$bind$1$1$1", f = "ActivatableNotificationViewBinder.kt", l = {45}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.statusbar.notification.row.ui.viewbinder.ActivatableNotificationViewBinder$bind$1$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes2.dex */
        public final class C00811 extends SuspendLambda implements Function2 {
            final /* synthetic */ TouchHandler $touchHandler;
            final /* synthetic */ ActivatableNotificationViewModel $viewModel;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00811(ActivatableNotificationViewModel activatableNotificationViewModel, TouchHandler touchHandler, Continuation<? super C00811> continuation) {
                super(2, continuation);
                this.$viewModel = activatableNotificationViewModel;
                this.$touchHandler = touchHandler;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C00811(this.$viewModel, this.$touchHandler, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C00811) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                    Flow isTouchable = this.$viewModel.isTouchable();
                    final TouchHandler touchHandler = this.$touchHandler;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.statusbar.notification.row.ui.viewbinder.ActivatableNotificationViewBinder.bind.1.1.1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            TouchHandler.this.isTouchEnabled = ((Boolean) obj2).booleanValue();
                            return Unit.INSTANCE;
                        }
                    };
                    this.label = 1;
                    if (isTouchable.collect(flowCollector, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ActivatableNotificationView activatableNotificationView, TouchHandler touchHandler, ActivatableNotificationViewModel activatableNotificationViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$view = activatableNotificationView;
            this.$touchHandler = touchHandler;
            this.$viewModel = activatableNotificationViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$view, this.$touchHandler, this.$viewModel, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                BuildersKt.launch$default((CoroutineScope) this.L$0, null, null, new C00811(this.$viewModel, this.$touchHandler, null), 3);
                ActivatableNotificationViewBinder activatableNotificationViewBinder = ActivatableNotificationViewBinder.INSTANCE;
                ActivatableNotificationView activatableNotificationView = this.$view;
                TouchHandler touchHandler = this.$touchHandler;
                this.label = 1;
                if (ActivatableNotificationViewBinder.access$registerListenersWhileAttached(activatableNotificationViewBinder, activatableNotificationView, touchHandler, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivatableNotificationViewBinder$bind$1(ActivatableNotificationView activatableNotificationView, TouchHandler touchHandler, ActivatableNotificationViewModel activatableNotificationViewModel, Continuation<? super ActivatableNotificationViewBinder$bind$1> continuation) {
        super(3, continuation);
        this.$view = activatableNotificationView;
        this.$touchHandler = touchHandler;
        this.$viewModel = activatableNotificationViewModel;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        ActivatableNotificationViewBinder$bind$1 activatableNotificationViewBinder$bind$1 = new ActivatableNotificationViewBinder$bind$1(this.$view, this.$touchHandler, this.$viewModel, (Continuation) obj3);
        activatableNotificationViewBinder$bind$1.L$0 = (LifecycleOwner) obj;
        return activatableNotificationViewBinder$bind$1.invokeSuspend(Unit.INSTANCE);
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
            LifecycleOwner lifecycleOwner = (LifecycleOwner) this.L$0;
            Lifecycle.State state = Lifecycle.State.STARTED;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$view, this.$touchHandler, this.$viewModel, null);
            this.label = 1;
            if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycleOwner, state, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
