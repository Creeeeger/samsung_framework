package com.android.systemui.statusbar.pipeline.shared.ui.view;

import android.content.res.ColorStateList;
import android.widget.ImageView;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.RepeatOnLifecycleKt;
import com.android.systemui.statusbar.StatusBarIconView;
import kotlin.KotlinNothingValueException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.shared.ui.view.SingleBindableStatusBarIconView$Companion$withDefaultBinding$1", f = "SingleBindableStatusBarIconView.kt", l = {99}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class SingleBindableStatusBarIconView$Companion$withDefaultBinding$1 extends SuspendLambda implements Function3 {
    final /* synthetic */ Function3 $block;
    final /* synthetic */ MutableStateFlow $decorTint;
    final /* synthetic */ MutableStateFlow $iconTint;
    final /* synthetic */ Ref$BooleanRef $isCollecting;
    final /* synthetic */ SingleBindableStatusBarIconView $view;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.shared.ui.view.SingleBindableStatusBarIconView$Companion$withDefaultBinding$1$1", f = "SingleBindableStatusBarIconView.kt", l = {102}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.statusbar.pipeline.shared.ui.view.SingleBindableStatusBarIconView$Companion$withDefaultBinding$1$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ LifecycleOwner $$this$repeatWhenAttached;
        final /* synthetic */ MutableStateFlow $decorTint;
        final /* synthetic */ MutableStateFlow $iconTint;
        final /* synthetic */ Ref$BooleanRef $isCollecting;
        final /* synthetic */ SingleBindableStatusBarIconView $view;
        int label;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.shared.ui.view.SingleBindableStatusBarIconView$Companion$withDefaultBinding$1$1$1", f = "SingleBindableStatusBarIconView.kt", l = {143}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.statusbar.pipeline.shared.ui.view.SingleBindableStatusBarIconView$Companion$withDefaultBinding$1$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes2.dex */
        public final class C01181 extends SuspendLambda implements Function2 {
            final /* synthetic */ MutableStateFlow $decorTint;
            final /* synthetic */ MutableStateFlow $iconTint;
            final /* synthetic */ Ref$BooleanRef $isCollecting;
            final /* synthetic */ SingleBindableStatusBarIconView $view;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.shared.ui.view.SingleBindableStatusBarIconView$Companion$withDefaultBinding$1$1$1$1", f = "SingleBindableStatusBarIconView.kt", l = {131}, m = "invokeSuspend")
            /* renamed from: com.android.systemui.statusbar.pipeline.shared.ui.view.SingleBindableStatusBarIconView$Companion$withDefaultBinding$1$1$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes2.dex */
            public final class C01191 extends SuspendLambda implements Function2 {
                final /* synthetic */ MutableStateFlow $iconTint;
                final /* synthetic */ SingleBindableStatusBarIconView $view;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C01191(MutableStateFlow mutableStateFlow, SingleBindableStatusBarIconView singleBindableStatusBarIconView, Continuation<? super C01191> continuation) {
                    super(2, continuation);
                    this.$iconTint = mutableStateFlow;
                    this.$view = singleBindableStatusBarIconView;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    return new C01191(this.$iconTint, this.$view, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((C01191) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                        MutableStateFlow mutableStateFlow = this.$iconTint;
                        final SingleBindableStatusBarIconView singleBindableStatusBarIconView = this.$view;
                        FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.statusbar.pipeline.shared.ui.view.SingleBindableStatusBarIconView.Companion.withDefaultBinding.1.1.1.1.1
                            @Override // kotlinx.coroutines.flow.FlowCollector
                            public final Object emit(Object obj2, Continuation continuation) {
                                int intValue = ((Number) obj2).intValue();
                                ColorStateList valueOf = ColorStateList.valueOf(intValue);
                                SingleBindableStatusBarIconView singleBindableStatusBarIconView2 = SingleBindableStatusBarIconView.this;
                                ImageView imageView = singleBindableStatusBarIconView2.iconView;
                                StatusBarIconView statusBarIconView = null;
                                if (imageView == null) {
                                    imageView = null;
                                }
                                imageView.setImageTintList(valueOf);
                                StatusBarIconView statusBarIconView2 = singleBindableStatusBarIconView2.dotView;
                                if (statusBarIconView2 != null) {
                                    statusBarIconView = statusBarIconView2;
                                }
                                statusBarIconView.setDecorColor(intValue);
                                return Unit.INSTANCE;
                            }
                        };
                        this.label = 1;
                        if (((StateFlowImpl) mutableStateFlow).collect(flowCollector, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    throw new KotlinNothingValueException();
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.shared.ui.view.SingleBindableStatusBarIconView$Companion$withDefaultBinding$1$1$1$2", f = "SingleBindableStatusBarIconView.kt", l = {139}, m = "invokeSuspend")
            /* renamed from: com.android.systemui.statusbar.pipeline.shared.ui.view.SingleBindableStatusBarIconView$Companion$withDefaultBinding$1$1$1$2, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass2 extends SuspendLambda implements Function2 {
                final /* synthetic */ MutableStateFlow $decorTint;
                final /* synthetic */ SingleBindableStatusBarIconView $view;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass2(MutableStateFlow mutableStateFlow, SingleBindableStatusBarIconView singleBindableStatusBarIconView, Continuation<? super AnonymousClass2> continuation) {
                    super(2, continuation);
                    this.$decorTint = mutableStateFlow;
                    this.$view = singleBindableStatusBarIconView;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    return new AnonymousClass2(this.$decorTint, this.$view, continuation);
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
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    } else {
                        ResultKt.throwOnFailure(obj);
                        MutableStateFlow mutableStateFlow = this.$decorTint;
                        final SingleBindableStatusBarIconView singleBindableStatusBarIconView = this.$view;
                        FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.statusbar.pipeline.shared.ui.view.SingleBindableStatusBarIconView.Companion.withDefaultBinding.1.1.1.2.1
                            @Override // kotlinx.coroutines.flow.FlowCollector
                            public final Object emit(Object obj2, Continuation continuation) {
                                int intValue = ((Number) obj2).intValue();
                                StatusBarIconView statusBarIconView = SingleBindableStatusBarIconView.this.dotView;
                                if (statusBarIconView == null) {
                                    statusBarIconView = null;
                                }
                                statusBarIconView.setDecorColor(intValue);
                                return Unit.INSTANCE;
                            }
                        };
                        this.label = 1;
                        if (((StateFlowImpl) mutableStateFlow).collect(flowCollector, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    throw new KotlinNothingValueException();
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C01181(Ref$BooleanRef ref$BooleanRef, MutableStateFlow mutableStateFlow, SingleBindableStatusBarIconView singleBindableStatusBarIconView, MutableStateFlow mutableStateFlow2, Continuation<? super C01181> continuation) {
                super(2, continuation);
                this.$isCollecting = ref$BooleanRef;
                this.$iconTint = mutableStateFlow;
                this.$view = singleBindableStatusBarIconView;
                this.$decorTint = mutableStateFlow2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                C01181 c01181 = new C01181(this.$isCollecting, this.$iconTint, this.$view, this.$decorTint, continuation);
                c01181.L$0 = obj;
                return c01181;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C01181) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i = this.label;
                try {
                    if (i != 0) {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    } else {
                        ResultKt.throwOnFailure(obj);
                        CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                        BuildersKt.launch$default(coroutineScope, null, null, new C01191(this.$iconTint, this.$view, null), 3);
                        BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass2(this.$decorTint, this.$view, null), 3);
                        this.label = 1;
                        if (DelayKt.awaitCancellation(this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    throw new KotlinNothingValueException();
                } catch (Throwable th) {
                    this.$isCollecting.element = false;
                    throw th;
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(LifecycleOwner lifecycleOwner, Ref$BooleanRef ref$BooleanRef, MutableStateFlow mutableStateFlow, SingleBindableStatusBarIconView singleBindableStatusBarIconView, MutableStateFlow mutableStateFlow2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$$this$repeatWhenAttached = lifecycleOwner;
            this.$isCollecting = ref$BooleanRef;
            this.$iconTint = mutableStateFlow;
            this.$view = singleBindableStatusBarIconView;
            this.$decorTint = mutableStateFlow2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.$$this$repeatWhenAttached, this.$isCollecting, this.$iconTint, this.$view, this.$decorTint, continuation);
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
                LifecycleOwner lifecycleOwner = this.$$this$repeatWhenAttached;
                Lifecycle.State state = Lifecycle.State.STARTED;
                C01181 c01181 = new C01181(this.$isCollecting, this.$iconTint, this.$view, this.$decorTint, null);
                this.label = 1;
                if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycleOwner, state, c01181, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleBindableStatusBarIconView$Companion$withDefaultBinding$1(Function3 function3, SingleBindableStatusBarIconView singleBindableStatusBarIconView, Ref$BooleanRef ref$BooleanRef, MutableStateFlow mutableStateFlow, MutableStateFlow mutableStateFlow2, Continuation<? super SingleBindableStatusBarIconView$Companion$withDefaultBinding$1> continuation) {
        super(3, continuation);
        this.$block = function3;
        this.$view = singleBindableStatusBarIconView;
        this.$isCollecting = ref$BooleanRef;
        this.$iconTint = mutableStateFlow;
        this.$decorTint = mutableStateFlow2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        SingleBindableStatusBarIconView$Companion$withDefaultBinding$1 singleBindableStatusBarIconView$Companion$withDefaultBinding$1 = new SingleBindableStatusBarIconView$Companion$withDefaultBinding$1(this.$block, this.$view, this.$isCollecting, this.$iconTint, this.$decorTint, (Continuation) obj3);
        singleBindableStatusBarIconView$Companion$withDefaultBinding$1.L$0 = (LifecycleOwner) obj;
        return singleBindableStatusBarIconView$Companion$withDefaultBinding$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        LifecycleOwner lifecycleOwner;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                LifecycleOwner lifecycleOwner2 = (LifecycleOwner) this.L$0;
                ResultKt.throwOnFailure(obj);
                lifecycleOwner = lifecycleOwner2;
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            LifecycleOwner lifecycleOwner3 = (LifecycleOwner) this.L$0;
            Function3 function3 = this.$block;
            SingleBindableStatusBarIconView singleBindableStatusBarIconView = this.$view;
            this.L$0 = lifecycleOwner3;
            this.label = 1;
            if (function3.invoke(lifecycleOwner3, singleBindableStatusBarIconView, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
            lifecycleOwner = lifecycleOwner3;
        }
        BuildersKt.launch$default(LifecycleOwnerKt.getLifecycleScope(lifecycleOwner), null, null, new AnonymousClass1(lifecycleOwner, this.$isCollecting, this.$iconTint, this.$view, this.$decorTint, null), 3);
        return Unit.INSTANCE;
    }
}
