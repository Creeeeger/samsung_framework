package com.android.systemui.keyguard.ui.binder;

import android.view.View;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.RepeatOnLifecycleKt;
import com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewSmartspaceViewModel;
import com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewSmartspaceViewModel$special$$inlined$map$1;
import com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewSmartspaceViewModel$special$$inlined$map$2;
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
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardPreviewSmartspaceViewBinder$bind$1", f = "KeyguardPreviewSmartspaceViewBinder.kt", l = {37}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class KeyguardPreviewSmartspaceViewBinder$bind$1 extends SuspendLambda implements Function3 {
    final /* synthetic */ View $smartspace;
    final /* synthetic */ KeyguardPreviewSmartspaceViewModel $viewModel;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardPreviewSmartspaceViewBinder$bind$1$1", f = "KeyguardPreviewSmartspaceViewBinder.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardPreviewSmartspaceViewBinder$bind$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ View $smartspace;
        final /* synthetic */ KeyguardPreviewSmartspaceViewModel $viewModel;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardPreviewSmartspaceViewBinder$bind$1$1$1", f = "KeyguardPreviewSmartspaceViewBinder.kt", l = {38}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardPreviewSmartspaceViewBinder$bind$1$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public final class C00591 extends SuspendLambda implements Function2 {
            final /* synthetic */ View $smartspace;
            final /* synthetic */ KeyguardPreviewSmartspaceViewModel $viewModel;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00591(KeyguardPreviewSmartspaceViewModel keyguardPreviewSmartspaceViewModel, View view, Continuation<? super C00591> continuation) {
                super(2, continuation);
                this.$viewModel = keyguardPreviewSmartspaceViewModel;
                this.$smartspace = view;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C00591(this.$viewModel, this.$smartspace, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C00591) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                    KeyguardPreviewSmartspaceViewModel$special$$inlined$map$1 keyguardPreviewSmartspaceViewModel$special$$inlined$map$1 = this.$viewModel.smartspaceTopPadding;
                    final View view = this.$smartspace;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.keyguard.ui.binder.KeyguardPreviewSmartspaceViewBinder.bind.1.1.1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            int intValue = ((Number) obj2).intValue();
                            KeyguardPreviewSmartspaceViewBinder.INSTANCE.getClass();
                            View view2 = view;
                            view2.setPaddingRelative(view2.getPaddingStart(), intValue, view2.getPaddingEnd(), view2.getPaddingBottom());
                            return Unit.INSTANCE;
                        }
                    };
                    this.label = 1;
                    if (keyguardPreviewSmartspaceViewModel$special$$inlined$map$1.collect(flowCollector, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardPreviewSmartspaceViewBinder$bind$1$1$2", f = "KeyguardPreviewSmartspaceViewBinder.kt", l = {40}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardPreviewSmartspaceViewBinder$bind$1$1$2, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass2 extends SuspendLambda implements Function2 {
            final /* synthetic */ View $smartspace;
            final /* synthetic */ KeyguardPreviewSmartspaceViewModel $viewModel;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(KeyguardPreviewSmartspaceViewModel keyguardPreviewSmartspaceViewModel, View view, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.$viewModel = keyguardPreviewSmartspaceViewModel;
                this.$smartspace = view;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass2(this.$viewModel, this.$smartspace, continuation);
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
                    KeyguardPreviewSmartspaceViewModel$special$$inlined$map$2 keyguardPreviewSmartspaceViewModel$special$$inlined$map$2 = this.$viewModel.shouldHideSmartspace;
                    final View view = this.$smartspace;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.keyguard.ui.binder.KeyguardPreviewSmartspaceViewBinder.bind.1.1.2.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            int i2;
                            if (((Boolean) obj2).booleanValue()) {
                                i2 = 4;
                            } else {
                                i2 = 0;
                            }
                            view.setVisibility(i2);
                            return Unit.INSTANCE;
                        }
                    };
                    this.label = 1;
                    if (keyguardPreviewSmartspaceViewModel$special$$inlined$map$2.collect(flowCollector, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(KeyguardPreviewSmartspaceViewModel keyguardPreviewSmartspaceViewModel, View view, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$viewModel = keyguardPreviewSmartspaceViewModel;
            this.$smartspace = view;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$viewModel, this.$smartspace, continuation);
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
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                BuildersKt.launch$default(coroutineScope, null, null, new C00591(this.$viewModel, this.$smartspace, null), 3);
                BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass2(this.$viewModel, this.$smartspace, null), 3);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyguardPreviewSmartspaceViewBinder$bind$1(KeyguardPreviewSmartspaceViewModel keyguardPreviewSmartspaceViewModel, View view, Continuation<? super KeyguardPreviewSmartspaceViewBinder$bind$1> continuation) {
        super(3, continuation);
        this.$viewModel = keyguardPreviewSmartspaceViewModel;
        this.$smartspace = view;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        KeyguardPreviewSmartspaceViewBinder$bind$1 keyguardPreviewSmartspaceViewBinder$bind$1 = new KeyguardPreviewSmartspaceViewBinder$bind$1(this.$viewModel, this.$smartspace, (Continuation) obj3);
        keyguardPreviewSmartspaceViewBinder$bind$1.L$0 = (LifecycleOwner) obj;
        return keyguardPreviewSmartspaceViewBinder$bind$1.invokeSuspend(Unit.INSTANCE);
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
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$viewModel, this.$smartspace, null);
            this.label = 1;
            if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycleOwner, state, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
