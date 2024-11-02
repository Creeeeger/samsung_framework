package com.android.systemui.statusbar.pipeline.shared.ui.binder;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.RepeatOnLifecycleKt;
import com.android.systemui.statusbar.phone.fragment.CollapsedStatusBarFragment;
import com.android.systemui.statusbar.pipeline.shared.ui.viewmodel.CollapsedStatusBarViewModel;
import com.android.systemui.statusbar.pipeline.shared.ui.viewmodel.CollapsedStatusBarViewModelImpl;
import com.android.systemui.statusbar.pipeline.shared.ui.viewmodel.CollapsedStatusBarViewModelImpl$special$$inlined$map$2;
import kotlin.KotlinNothingValueException;
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
import kotlinx.coroutines.flow.ReadonlyStateFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.shared.ui.binder.CollapsedStatusBarViewBinderImpl$bind$1", f = "CollapsedStatusBarViewBinder.kt", l = {52}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class CollapsedStatusBarViewBinderImpl$bind$1 extends SuspendLambda implements Function3 {
    final /* synthetic */ StatusBarVisibilityChangeListener $listener;
    final /* synthetic */ CollapsedStatusBarViewModel $viewModel;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.shared.ui.binder.CollapsedStatusBarViewBinderImpl$bind$1$1", f = "CollapsedStatusBarViewBinder.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.statusbar.pipeline.shared.ui.binder.CollapsedStatusBarViewBinderImpl$bind$1$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ StatusBarVisibilityChangeListener $listener;
        final /* synthetic */ CollapsedStatusBarViewModel $viewModel;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.shared.ui.binder.CollapsedStatusBarViewBinderImpl$bind$1$1$1", f = "CollapsedStatusBarViewBinder.kt", l = {54}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.statusbar.pipeline.shared.ui.binder.CollapsedStatusBarViewBinderImpl$bind$1$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes2.dex */
        public final class C01151 extends SuspendLambda implements Function2 {
            final /* synthetic */ StatusBarVisibilityChangeListener $listener;
            final /* synthetic */ CollapsedStatusBarViewModel $viewModel;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C01151(CollapsedStatusBarViewModel collapsedStatusBarViewModel, StatusBarVisibilityChangeListener statusBarVisibilityChangeListener, Continuation<? super C01151> continuation) {
                super(2, continuation);
                this.$viewModel = collapsedStatusBarViewModel;
                this.$listener = statusBarVisibilityChangeListener;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C01151(this.$viewModel, this.$listener, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C01151) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                } else {
                    ResultKt.throwOnFailure(obj);
                    ReadonlyStateFlow readonlyStateFlow = ((CollapsedStatusBarViewModelImpl) this.$viewModel).isTransitioningFromLockscreenToOccluded;
                    final StatusBarVisibilityChangeListener statusBarVisibilityChangeListener = this.$listener;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.statusbar.pipeline.shared.ui.binder.CollapsedStatusBarViewBinderImpl.bind.1.1.1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            ((Boolean) obj2).booleanValue();
                            CollapsedStatusBarFragment collapsedStatusBarFragment = CollapsedStatusBarFragment.this;
                            collapsedStatusBarFragment.mStatusBarHideChecker.printStatusBarInfoLog("onStatusBarVisibilityMaybeChanged()");
                            collapsedStatusBarFragment.updateStatusBarVisibilities(true);
                            return Unit.INSTANCE;
                        }
                    };
                    this.label = 1;
                    if (readonlyStateFlow.collect(flowCollector, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                throw new KotlinNothingValueException();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.shared.ui.binder.CollapsedStatusBarViewBinderImpl$bind$1$1$2", f = "CollapsedStatusBarViewBinder.kt", l = {60}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.statusbar.pipeline.shared.ui.binder.CollapsedStatusBarViewBinderImpl$bind$1$1$2, reason: invalid class name */
        /* loaded from: classes2.dex */
        public final class AnonymousClass2 extends SuspendLambda implements Function2 {
            final /* synthetic */ StatusBarVisibilityChangeListener $listener;
            final /* synthetic */ CollapsedStatusBarViewModel $viewModel;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(CollapsedStatusBarViewModel collapsedStatusBarViewModel, StatusBarVisibilityChangeListener statusBarVisibilityChangeListener, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.$viewModel = collapsedStatusBarViewModel;
                this.$listener = statusBarVisibilityChangeListener;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass2(this.$viewModel, this.$listener, continuation);
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
                    CollapsedStatusBarViewModelImpl$special$$inlined$map$2 collapsedStatusBarViewModelImpl$special$$inlined$map$2 = ((CollapsedStatusBarViewModelImpl) this.$viewModel).transitionFromLockscreenToDreamStartedEvent;
                    final StatusBarVisibilityChangeListener statusBarVisibilityChangeListener = this.$listener;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.statusbar.pipeline.shared.ui.binder.CollapsedStatusBarViewBinderImpl.bind.1.1.2.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            CollapsedStatusBarFragment collapsedStatusBarFragment = CollapsedStatusBarFragment.this;
                            collapsedStatusBarFragment.mTransitionFromLockscreenToDreamStarted = true;
                            collapsedStatusBarFragment.mStatusBarHideChecker.printStatusBarInfoLog("onTransitionFromLockscreenToDreamStarted()");
                            collapsedStatusBarFragment.mStatusBarHideChecker.postUpdateStatusBarVisibility();
                            return Unit.INSTANCE;
                        }
                    };
                    this.label = 1;
                    if (collapsedStatusBarViewModelImpl$special$$inlined$map$2.collect(flowCollector, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(CollapsedStatusBarViewModel collapsedStatusBarViewModel, StatusBarVisibilityChangeListener statusBarVisibilityChangeListener, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$viewModel = collapsedStatusBarViewModel;
            this.$listener = statusBarVisibilityChangeListener;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$viewModel, this.$listener, continuation);
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
                BuildersKt.launch$default(coroutineScope, null, null, new C01151(this.$viewModel, this.$listener, null), 3);
                BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass2(this.$viewModel, this.$listener, null), 3);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollapsedStatusBarViewBinderImpl$bind$1(CollapsedStatusBarViewModel collapsedStatusBarViewModel, StatusBarVisibilityChangeListener statusBarVisibilityChangeListener, Continuation<? super CollapsedStatusBarViewBinderImpl$bind$1> continuation) {
        super(3, continuation);
        this.$viewModel = collapsedStatusBarViewModel;
        this.$listener = statusBarVisibilityChangeListener;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        CollapsedStatusBarViewBinderImpl$bind$1 collapsedStatusBarViewBinderImpl$bind$1 = new CollapsedStatusBarViewBinderImpl$bind$1(this.$viewModel, this.$listener, (Continuation) obj3);
        collapsedStatusBarViewBinderImpl$bind$1.L$0 = (LifecycleOwner) obj;
        return collapsedStatusBarViewBinderImpl$bind$1.invokeSuspend(Unit.INSTANCE);
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
            Lifecycle.State state = Lifecycle.State.CREATED;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$viewModel, this.$listener, null);
            this.label = 1;
            if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycleOwner, state, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
