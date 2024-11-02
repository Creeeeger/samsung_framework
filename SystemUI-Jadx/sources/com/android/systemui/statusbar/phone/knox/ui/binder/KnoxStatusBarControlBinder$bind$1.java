package com.android.systemui.statusbar.phone.knox.ui.binder;

import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.RepeatOnLifecycleKt;
import com.android.systemui.R;
import com.android.systemui.plugins.DarkIconDispatcher;
import com.android.systemui.statusbar.phone.knox.domain.model.KnoxStatusBarCustomTextModel;
import com.android.systemui.statusbar.phone.knox.ui.view.KnoxStatusBarTextView;
import com.android.systemui.statusbar.phone.knox.ui.viewmodel.KnoxStatusBarControlViewModel;
import com.android.systemui.statusbar.phone.knox.ui.viewmodel.KnoxStatusBarViewControl;
import kotlin.KotlinNothingValueException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.ReadonlyStateFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.phone.knox.ui.binder.KnoxStatusBarControlBinder$bind$1", f = "KnoxStatusBarControlBinder.kt", l = {19}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class KnoxStatusBarControlBinder$bind$1 extends SuspendLambda implements Function3 {
    final /* synthetic */ KnoxStatusBarViewControl $knoxStatusBarViewControl;
    final /* synthetic */ KnoxStatusBarControlViewModel $viewModel;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.statusbar.phone.knox.ui.binder.KnoxStatusBarControlBinder$bind$1$1", f = "KnoxStatusBarControlBinder.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.statusbar.phone.knox.ui.binder.KnoxStatusBarControlBinder$bind$1$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ KnoxStatusBarViewControl $knoxStatusBarViewControl;
        final /* synthetic */ KnoxStatusBarControlViewModel $viewModel;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.statusbar.phone.knox.ui.binder.KnoxStatusBarControlBinder$bind$1$1$1", f = "KnoxStatusBarControlBinder.kt", l = {22}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.statusbar.phone.knox.ui.binder.KnoxStatusBarControlBinder$bind$1$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes2.dex */
        public final class C00911 extends SuspendLambda implements Function2 {
            final /* synthetic */ KnoxStatusBarViewControl $knoxStatusBarViewControl;
            final /* synthetic */ KnoxStatusBarControlViewModel $viewModel;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00911(KnoxStatusBarControlViewModel knoxStatusBarControlViewModel, KnoxStatusBarViewControl knoxStatusBarViewControl, Continuation<? super C00911> continuation) {
                super(2, continuation);
                this.$viewModel = knoxStatusBarControlViewModel;
                this.$knoxStatusBarViewControl = knoxStatusBarViewControl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C00911(this.$viewModel, this.$knoxStatusBarViewControl, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C00911) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                    final KnoxStatusBarControlViewModel knoxStatusBarControlViewModel = this.$viewModel;
                    ReadonlyStateFlow readonlyStateFlow = knoxStatusBarControlViewModel.statusBarHidden;
                    final KnoxStatusBarViewControl knoxStatusBarViewControl = this.$knoxStatusBarViewControl;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.statusbar.phone.knox.ui.binder.KnoxStatusBarControlBinder.bind.1.1.1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            boolean booleanValue = ((Boolean) obj2).booleanValue();
                            Function1 function1 = KnoxStatusBarControlViewModel.this.setHidden;
                            if (function1 != null) {
                                function1.invoke(Boolean.valueOf(booleanValue));
                            } else {
                                KnoxStatusBarViewControl knoxStatusBarViewControl2 = knoxStatusBarViewControl;
                                knoxStatusBarViewControl2.setHiddenByKnox(booleanValue);
                                View statusBarView = knoxStatusBarViewControl2.getStatusBarView();
                                if (!booleanValue) {
                                    statusBarView.setVisibility(0);
                                } else {
                                    statusBarView.setVisibility(statusBarView.getVisibility());
                                }
                            }
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
        @DebugMetadata(c = "com.android.systemui.statusbar.phone.knox.ui.binder.KnoxStatusBarControlBinder$bind$1$1$2", f = "KnoxStatusBarControlBinder.kt", l = {30}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.statusbar.phone.knox.ui.binder.KnoxStatusBarControlBinder$bind$1$1$2, reason: invalid class name */
        /* loaded from: classes2.dex */
        public final class AnonymousClass2 extends SuspendLambda implements Function2 {
            final /* synthetic */ KnoxStatusBarViewControl $knoxStatusBarViewControl;
            final /* synthetic */ KnoxStatusBarControlViewModel $viewModel;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(KnoxStatusBarControlViewModel knoxStatusBarControlViewModel, KnoxStatusBarViewControl knoxStatusBarViewControl, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.$viewModel = knoxStatusBarControlViewModel;
                this.$knoxStatusBarViewControl = knoxStatusBarViewControl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass2(this.$viewModel, this.$knoxStatusBarViewControl, continuation);
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
                    final KnoxStatusBarControlViewModel knoxStatusBarControlViewModel = this.$viewModel;
                    ReadonlyStateFlow readonlyStateFlow = knoxStatusBarControlViewModel.knoxStatusBarCustomText;
                    final KnoxStatusBarViewControl knoxStatusBarViewControl = this.$knoxStatusBarViewControl;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.statusbar.phone.knox.ui.binder.KnoxStatusBarControlBinder.bind.1.1.2.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            boolean z;
                            KnoxStatusBarCustomTextModel knoxStatusBarCustomTextModel = (KnoxStatusBarCustomTextModel) obj2;
                            KnoxStatusBarControlViewModel knoxStatusBarControlViewModel2 = KnoxStatusBarControlViewModel.this;
                            knoxStatusBarControlViewModel2.getClass();
                            KnoxStatusBarTextView knoxStatusBarTextView = (KnoxStatusBarTextView) knoxStatusBarViewControl.getStatusBarView().findViewById(R.id.knox_custom_text);
                            if (knoxStatusBarTextView != null) {
                                String str = knoxStatusBarCustomTextModel.customText;
                                if (str != null && str.length() != 0) {
                                    z = false;
                                } else {
                                    z = true;
                                }
                                DarkIconDispatcher darkIconDispatcher = knoxStatusBarControlViewModel2.darkIconDispatcher;
                                if (z) {
                                    darkIconDispatcher.removeDarkReceiver(knoxStatusBarTextView);
                                    knoxStatusBarTextView.setVisibility(8);
                                    knoxStatusBarTextView.setSelected(false);
                                } else {
                                    darkIconDispatcher.addDarkReceiver(knoxStatusBarTextView);
                                    knoxStatusBarTextView.setVisibility(0);
                                    knoxStatusBarTextView.setText(str);
                                    knoxStatusBarTextView.setTextSize(1, knoxStatusBarCustomTextModel.textSize);
                                    knoxStatusBarTextView.setTypeface(null, knoxStatusBarCustomTextModel.textStyle);
                                    int i2 = knoxStatusBarCustomTextModel.width;
                                    if (i2 > 0) {
                                        knoxStatusBarTextView.setHorizontallyScrolling(true);
                                        knoxStatusBarTextView.setSingleLine();
                                        knoxStatusBarTextView.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                                        knoxStatusBarTextView.setMarqueeRepeatLimit(10);
                                        knoxStatusBarTextView.setSelected(true);
                                    } else {
                                        knoxStatusBarTextView.setHorizontallyScrolling(false);
                                        knoxStatusBarTextView.setSingleLine(false);
                                        knoxStatusBarTextView.setEllipsize(null);
                                        i2 = 108;
                                    }
                                    int i3 = (int) (i2 * knoxStatusBarTextView.getContext().getResources().getDisplayMetrics().density);
                                    Log.d("KnoxStatusBarTextView", "Scroll width=" + i3);
                                    knoxStatusBarTextView.setMaxWidth(i3);
                                    knoxStatusBarTextView.setVisibility(0);
                                }
                            }
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
        @DebugMetadata(c = "com.android.systemui.statusbar.phone.knox.ui.binder.KnoxStatusBarControlBinder$bind$1$1$3", f = "KnoxStatusBarControlBinder.kt", l = {38}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.statusbar.phone.knox.ui.binder.KnoxStatusBarControlBinder$bind$1$1$3, reason: invalid class name */
        /* loaded from: classes2.dex */
        public final class AnonymousClass3 extends SuspendLambda implements Function2 {
            final /* synthetic */ KnoxStatusBarViewControl $knoxStatusBarViewControl;
            final /* synthetic */ KnoxStatusBarControlViewModel $viewModel;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass3(KnoxStatusBarControlViewModel knoxStatusBarControlViewModel, KnoxStatusBarViewControl knoxStatusBarViewControl, Continuation<? super AnonymousClass3> continuation) {
                super(2, continuation);
                this.$viewModel = knoxStatusBarControlViewModel;
                this.$knoxStatusBarViewControl = knoxStatusBarViewControl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass3(this.$viewModel, this.$knoxStatusBarViewControl, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                    final KnoxStatusBarControlViewModel knoxStatusBarControlViewModel = this.$viewModel;
                    ReadonlyStateFlow readonlyStateFlow = knoxStatusBarControlViewModel.statusBarIconsEnabled;
                    final KnoxStatusBarViewControl knoxStatusBarViewControl = this.$knoxStatusBarViewControl;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.statusbar.phone.knox.ui.binder.KnoxStatusBarControlBinder.bind.1.1.3.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            boolean booleanValue = ((Boolean) obj2).booleanValue();
                            KnoxStatusBarControlViewModel.this.getClass();
                            View findViewById = knoxStatusBarViewControl.getStatusBarView().findViewById(R.id.system_icons);
                            if (booleanValue) {
                                findViewById.animate().cancel();
                                findViewById.setAlpha(1.0f);
                                findViewById.setVisibility(0);
                            } else {
                                findViewById.animate().cancel();
                                findViewById.setAlpha(0.0f);
                                findViewById.setVisibility(4);
                            }
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(KnoxStatusBarControlViewModel knoxStatusBarControlViewModel, KnoxStatusBarViewControl knoxStatusBarViewControl, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$viewModel = knoxStatusBarControlViewModel;
            this.$knoxStatusBarViewControl = knoxStatusBarViewControl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$viewModel, this.$knoxStatusBarViewControl, continuation);
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
                BuildersKt.launch$default(coroutineScope, null, null, new C00911(this.$viewModel, this.$knoxStatusBarViewControl, null), 3);
                BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass2(this.$viewModel, this.$knoxStatusBarViewControl, null), 3);
                BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass3(this.$viewModel, this.$knoxStatusBarViewControl, null), 3);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KnoxStatusBarControlBinder$bind$1(KnoxStatusBarControlViewModel knoxStatusBarControlViewModel, KnoxStatusBarViewControl knoxStatusBarViewControl, Continuation<? super KnoxStatusBarControlBinder$bind$1> continuation) {
        super(3, continuation);
        this.$viewModel = knoxStatusBarControlViewModel;
        this.$knoxStatusBarViewControl = knoxStatusBarViewControl;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        KnoxStatusBarControlBinder$bind$1 knoxStatusBarControlBinder$bind$1 = new KnoxStatusBarControlBinder$bind$1(this.$viewModel, this.$knoxStatusBarViewControl, (Continuation) obj3);
        knoxStatusBarControlBinder$bind$1.L$0 = (LifecycleOwner) obj;
        return knoxStatusBarControlBinder$bind$1.invokeSuspend(Unit.INSTANCE);
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
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$viewModel, this.$knoxStatusBarViewControl, null);
            this.label = 1;
            if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycleOwner, state, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
