package com.android.systemui.biometrics.ui.binder;

import android.os.UserHandle;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImeAwareEditText;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.RepeatOnLifecycleKt;
import com.android.systemui.biometrics.AuthContainerView;
import com.android.systemui.biometrics.ui.CredentialPasswordView;
import com.android.systemui.biometrics.ui.CredentialView;
import com.android.systemui.biometrics.ui.viewmodel.BiometricPromptHeaderViewModelImpl;
import com.android.systemui.biometrics.ui.viewmodel.CredentialHeaderViewModel;
import com.android.systemui.biometrics.ui.viewmodel.CredentialViewModel;
import com.android.systemui.biometrics.ui.viewmodel.CredentialViewModel$special$$inlined$map$1;
import com.android.systemui.biometrics.ui.viewmodel.CredentialViewModel$special$$inlined$map$2;
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
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.ReadonlySharedFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.biometrics.ui.binder.CredentialPasswordViewBinder$bind$1", f = "CredentialPasswordViewBinder.kt", l = {43}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class CredentialPasswordViewBinder$bind$1 extends SuspendLambda implements Function3 {
    final /* synthetic */ CredentialView.Host $host;
    final /* synthetic */ InputMethodManager $imeManager;
    final /* synthetic */ OnBackInvokedCallback $onBackInvokedCallback;
    final /* synthetic */ ImeAwareEditText $passwordField;
    final /* synthetic */ boolean $requestFocusForInput;
    final /* synthetic */ CredentialPasswordView $view;
    final /* synthetic */ CredentialViewModel $viewModel;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.biometrics.ui.binder.CredentialPasswordViewBinder$bind$1$1", f = "CredentialPasswordViewBinder.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.biometrics.ui.binder.CredentialPasswordViewBinder$bind$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ CredentialView.Host $host;
        final /* synthetic */ InputMethodManager $imeManager;
        final /* synthetic */ OnBackInvokedCallback $onBackInvokedCallback;
        final /* synthetic */ ImeAwareEditText $passwordField;
        final /* synthetic */ CredentialPasswordView $view;
        final /* synthetic */ CredentialViewModel $viewModel;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.biometrics.ui.binder.CredentialPasswordViewBinder$bind$1$1$1", f = "CredentialPasswordViewBinder.kt", l = {46}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.biometrics.ui.binder.CredentialPasswordViewBinder$bind$1$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public final class C00071 extends SuspendLambda implements Function2 {
            final /* synthetic */ OnBackInvokedCallback $onBackInvokedCallback;
            final /* synthetic */ ImeAwareEditText $passwordField;
            final /* synthetic */ CredentialViewModel $viewModel;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00071(CredentialViewModel credentialViewModel, ImeAwareEditText imeAwareEditText, OnBackInvokedCallback onBackInvokedCallback, Continuation<? super C00071> continuation) {
                super(2, continuation);
                this.$viewModel = credentialViewModel;
                this.$passwordField = imeAwareEditText;
                this.$onBackInvokedCallback = onBackInvokedCallback;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                C00071 c00071 = new C00071(this.$viewModel, this.$passwordField, this.$onBackInvokedCallback, continuation);
                c00071.L$0 = obj;
                return c00071;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C00071) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                    final CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                    final CredentialViewModel credentialViewModel = this.$viewModel;
                    CredentialViewModel$special$$inlined$map$1 credentialViewModel$special$$inlined$map$1 = credentialViewModel.header;
                    final ImeAwareEditText imeAwareEditText = this.$passwordField;
                    final OnBackInvokedCallback onBackInvokedCallback = this.$onBackInvokedCallback;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.biometrics.ui.binder.CredentialPasswordViewBinder.bind.1.1.1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            final CredentialHeaderViewModel credentialHeaderViewModel = (CredentialHeaderViewModel) obj2;
                            UserHandle userHandle = ((BiometricPromptHeaderViewModelImpl) credentialHeaderViewModel).user;
                            ImeAwareEditText imeAwareEditText2 = imeAwareEditText;
                            imeAwareEditText2.setTextOperationUser(userHandle);
                            final CoroutineScope coroutineScope2 = coroutineScope;
                            final CredentialViewModel credentialViewModel2 = credentialViewModel;
                            imeAwareEditText2.setOnEditorActionListener(new OnImeSubmitListener(new Function1() { // from class: com.android.systemui.biometrics.ui.binder.CredentialPasswordViewBinder.bind.1.1.1.1.1

                                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                                @DebugMetadata(c = "com.android.systemui.biometrics.ui.binder.CredentialPasswordViewBinder$bind$1$1$1$1$1$1", f = "CredentialPasswordViewBinder.kt", l = {50}, m = "invokeSuspend")
                                /* renamed from: com.android.systemui.biometrics.ui.binder.CredentialPasswordViewBinder$bind$1$1$1$1$1$1, reason: invalid class name and collision with other inner class name */
                                /* loaded from: classes.dex */
                                final class C00101 extends SuspendLambda implements Function2 {
                                    final /* synthetic */ CredentialHeaderViewModel $header;
                                    final /* synthetic */ CharSequence $text;
                                    final /* synthetic */ CredentialViewModel $viewModel;
                                    int label;

                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    public C00101(CredentialViewModel credentialViewModel, CharSequence charSequence, CredentialHeaderViewModel credentialHeaderViewModel, Continuation<? super C00101> continuation) {
                                        super(2, continuation);
                                        this.$viewModel = credentialViewModel;
                                        this.$text = charSequence;
                                        this.$header = credentialHeaderViewModel;
                                    }

                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                    public final Continuation create(Object obj, Continuation continuation) {
                                        return new C00101(this.$viewModel, this.$text, this.$header, continuation);
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj, Object obj2) {
                                        return ((C00101) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                                            CredentialViewModel credentialViewModel = this.$viewModel;
                                            CharSequence charSequence = this.$text;
                                            CredentialHeaderViewModel credentialHeaderViewModel = this.$header;
                                            this.label = 1;
                                            if (credentialViewModel.checkCredential(charSequence, credentialHeaderViewModel, this) == coroutineSingletons) {
                                                return coroutineSingletons;
                                            }
                                        }
                                        return Unit.INSTANCE;
                                    }
                                }

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj3) {
                                    BuildersKt.launch$default(CoroutineScope.this, null, null, new C00101(credentialViewModel2, (CharSequence) obj3, credentialHeaderViewModel, null), 3);
                                    return Unit.INSTANCE;
                                }
                            }));
                            imeAwareEditText2.setOnKeyListener(new OnBackButtonListener(onBackInvokedCallback));
                            return Unit.INSTANCE;
                        }
                    };
                    this.label = 1;
                    if (credentialViewModel$special$$inlined$map$1.collect(flowCollector, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.biometrics.ui.binder.CredentialPasswordViewBinder$bind$1$1$2", f = "CredentialPasswordViewBinder.kt", l = {58}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.biometrics.ui.binder.CredentialPasswordViewBinder$bind$1$1$2, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass2 extends SuspendLambda implements Function2 {
            final /* synthetic */ ImeAwareEditText $passwordField;
            final /* synthetic */ CredentialViewModel $viewModel;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(CredentialViewModel credentialViewModel, ImeAwareEditText imeAwareEditText, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.$viewModel = credentialViewModel;
                this.$passwordField = imeAwareEditText;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass2(this.$viewModel, this.$passwordField, continuation);
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
                    CredentialViewModel$special$$inlined$map$2 credentialViewModel$special$$inlined$map$2 = this.$viewModel.inputFlags;
                    final ImeAwareEditText imeAwareEditText = this.$passwordField;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.biometrics.ui.binder.CredentialPasswordViewBinder.bind.1.1.2.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            Integer num = (Integer) obj2;
                            if (num != null) {
                                imeAwareEditText.setInputType(num.intValue());
                            }
                            return Unit.INSTANCE;
                        }
                    };
                    this.label = 1;
                    if (credentialViewModel$special$$inlined$map$2.collect(flowCollector, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.biometrics.ui.binder.CredentialPasswordViewBinder$bind$1$1$3", f = "CredentialPasswordViewBinder.kt", l = {65}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.biometrics.ui.binder.CredentialPasswordViewBinder$bind$1$1$3, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass3 extends SuspendLambda implements Function2 {
            final /* synthetic */ CredentialView.Host $host;
            final /* synthetic */ InputMethodManager $imeManager;
            final /* synthetic */ ImeAwareEditText $passwordField;
            final /* synthetic */ CredentialPasswordView $view;
            final /* synthetic */ CredentialViewModel $viewModel;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass3(CredentialViewModel credentialViewModel, InputMethodManager inputMethodManager, CredentialPasswordView credentialPasswordView, CredentialView.Host host, ImeAwareEditText imeAwareEditText, Continuation<? super AnonymousClass3> continuation) {
                super(2, continuation);
                this.$viewModel = credentialViewModel;
                this.$imeManager = inputMethodManager;
                this.$view = credentialPasswordView;
                this.$host = host;
                this.$passwordField = imeAwareEditText;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass3(this.$viewModel, this.$imeManager, this.$view, this.$host, this.$passwordField, continuation);
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
                    if (i == 1) {
                        ResultKt.throwOnFailure(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    ReadonlySharedFlow readonlySharedFlow = this.$viewModel.validatedAttestation;
                    final InputMethodManager inputMethodManager = this.$imeManager;
                    final CredentialPasswordView credentialPasswordView = this.$view;
                    final CredentialView.Host host = this.$host;
                    final ImeAwareEditText imeAwareEditText = this.$passwordField;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.biometrics.ui.binder.CredentialPasswordViewBinder.bind.1.1.3.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            byte[] bArr = (byte[]) obj2;
                            if (bArr != null) {
                                inputMethodManager.hideSoftInputFromWindow(credentialPasswordView.getWindowToken(), 0);
                                AuthContainerView authContainerView = (AuthContainerView) host;
                                authContainerView.mCredentialAttestation = bArr;
                                authContainerView.animateAway(7, true);
                            } else {
                                imeAwareEditText.setText("");
                            }
                            return Unit.INSTANCE;
                        }
                    };
                    this.label = 1;
                    if (readonlySharedFlow.collect(flowCollector, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.biometrics.ui.binder.CredentialPasswordViewBinder$bind$1$1$4", f = "CredentialPasswordViewBinder.kt", l = {82}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.biometrics.ui.binder.CredentialPasswordViewBinder$bind$1$1$4, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass4 extends SuspendLambda implements Function2 {
            final /* synthetic */ OnBackInvokedCallback $onBackInvokedCallback;
            final /* synthetic */ OnBackInvokedDispatcher $onBackInvokedDispatcher;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass4(OnBackInvokedDispatcher onBackInvokedDispatcher, OnBackInvokedCallback onBackInvokedCallback, Continuation<? super AnonymousClass4> continuation) {
                super(2, continuation);
                this.$onBackInvokedDispatcher = onBackInvokedDispatcher;
                this.$onBackInvokedCallback = onBackInvokedCallback;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass4(this.$onBackInvokedDispatcher, this.$onBackInvokedCallback, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass4) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                    this.$onBackInvokedDispatcher.registerOnBackInvokedCallback(0, this.$onBackInvokedCallback);
                    this.label = 1;
                    if (DelayKt.awaitCancellation(this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                throw new KotlinNothingValueException();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(CredentialPasswordView credentialPasswordView, CredentialViewModel credentialViewModel, ImeAwareEditText imeAwareEditText, OnBackInvokedCallback onBackInvokedCallback, InputMethodManager inputMethodManager, CredentialView.Host host, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$view = credentialPasswordView;
            this.$viewModel = credentialViewModel;
            this.$passwordField = imeAwareEditText;
            this.$onBackInvokedCallback = onBackInvokedCallback;
            this.$imeManager = inputMethodManager;
            this.$host = host;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$view, this.$viewModel, this.$passwordField, this.$onBackInvokedCallback, this.$imeManager, this.$host, continuation);
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
                BuildersKt.launch$default(coroutineScope, null, null, new C00071(this.$viewModel, this.$passwordField, this.$onBackInvokedCallback, null), 3);
                BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass2(this.$viewModel, this.$passwordField, null), 3);
                BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass3(this.$viewModel, this.$imeManager, this.$view, this.$host, this.$passwordField, null), 3);
                final OnBackInvokedDispatcher findOnBackInvokedDispatcher = this.$view.findOnBackInvokedDispatcher();
                if (findOnBackInvokedDispatcher != null) {
                    StandaloneCoroutine launch$default = BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass4(findOnBackInvokedDispatcher, this.$onBackInvokedCallback, null), 3);
                    final OnBackInvokedCallback onBackInvokedCallback = this.$onBackInvokedCallback;
                    launch$default.invokeOnCompletion(new Function1() { // from class: com.android.systemui.biometrics.ui.binder.CredentialPasswordViewBinder.bind.1.1.5
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            findOnBackInvokedDispatcher.unregisterOnBackInvokedCallback(onBackInvokedCallback);
                            return Unit.INSTANCE;
                        }
                    });
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CredentialPasswordViewBinder$bind$1(boolean z, ImeAwareEditText imeAwareEditText, CredentialPasswordView credentialPasswordView, CredentialViewModel credentialViewModel, OnBackInvokedCallback onBackInvokedCallback, InputMethodManager inputMethodManager, CredentialView.Host host, Continuation<? super CredentialPasswordViewBinder$bind$1> continuation) {
        super(3, continuation);
        this.$requestFocusForInput = z;
        this.$passwordField = imeAwareEditText;
        this.$view = credentialPasswordView;
        this.$viewModel = credentialViewModel;
        this.$onBackInvokedCallback = onBackInvokedCallback;
        this.$imeManager = inputMethodManager;
        this.$host = host;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        CredentialPasswordViewBinder$bind$1 credentialPasswordViewBinder$bind$1 = new CredentialPasswordViewBinder$bind$1(this.$requestFocusForInput, this.$passwordField, this.$view, this.$viewModel, this.$onBackInvokedCallback, this.$imeManager, this.$host, (Continuation) obj3);
        credentialPasswordViewBinder$bind$1.L$0 = (LifecycleOwner) obj;
        return credentialPasswordViewBinder$bind$1.invokeSuspend(Unit.INSTANCE);
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
            if (this.$requestFocusForInput) {
                this.$passwordField.requestFocus();
                this.$passwordField.scheduleShowSoftInput();
            }
            Lifecycle.State state = Lifecycle.State.STARTED;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$view, this.$viewModel, this.$passwordField, this.$onBackInvokedCallback, this.$imeManager, this.$host, null);
            this.label = 1;
            if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycleOwner, state, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
