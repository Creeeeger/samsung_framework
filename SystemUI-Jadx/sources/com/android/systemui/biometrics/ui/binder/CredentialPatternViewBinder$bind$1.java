package com.android.systemui.biometrics.ui.binder;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.RepeatOnLifecycleKt;
import com.android.internal.widget.LockPatternView;
import com.android.systemui.biometrics.AuthContainerView;
import com.android.systemui.biometrics.domain.interactor.CredentialStatus;
import com.android.systemui.biometrics.domain.model.BiometricPromptRequest;
import com.android.systemui.biometrics.ui.CredentialView;
import com.android.systemui.biometrics.ui.viewmodel.CredentialHeaderViewModel;
import com.android.systemui.biometrics.ui.viewmodel.CredentialViewModel;
import com.android.systemui.biometrics.ui.viewmodel.CredentialViewModel$special$$inlined$map$1;
import com.android.systemui.biometrics.ui.viewmodel.CredentialViewModel$special$$inlined$map$3;
import com.android.systemui.biometrics.ui.viewmodel.CredentialViewModelKt;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.ReadonlySharedFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.biometrics.ui.binder.CredentialPatternViewBinder$bind$1", f = "CredentialPatternViewBinder.kt", l = {26}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class CredentialPatternViewBinder$bind$1 extends SuspendLambda implements Function3 {
    final /* synthetic */ CredentialView.Host $host;
    final /* synthetic */ LockPatternView $lockPatternView;
    final /* synthetic */ CredentialViewModel $viewModel;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.biometrics.ui.binder.CredentialPatternViewBinder$bind$1$1", f = "CredentialPatternViewBinder.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.biometrics.ui.binder.CredentialPatternViewBinder$bind$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ CredentialView.Host $host;
        final /* synthetic */ LockPatternView $lockPatternView;
        final /* synthetic */ CredentialViewModel $viewModel;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.biometrics.ui.binder.CredentialPatternViewBinder$bind$1$1$1", f = "CredentialPatternViewBinder.kt", l = {29}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.biometrics.ui.binder.CredentialPatternViewBinder$bind$1$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public final class C00131 extends SuspendLambda implements Function2 {
            final /* synthetic */ LockPatternView $lockPatternView;
            final /* synthetic */ CredentialViewModel $viewModel;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00131(CredentialViewModel credentialViewModel, LockPatternView lockPatternView, Continuation<? super C00131> continuation) {
                super(2, continuation);
                this.$viewModel = credentialViewModel;
                this.$lockPatternView = lockPatternView;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                C00131 c00131 = new C00131(this.$viewModel, this.$lockPatternView, continuation);
                c00131.L$0 = obj;
                return c00131;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C00131) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                    final LockPatternView lockPatternView = this.$lockPatternView;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.biometrics.ui.binder.CredentialPatternViewBinder.bind.1.1.1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            final CredentialHeaderViewModel credentialHeaderViewModel = (CredentialHeaderViewModel) obj2;
                            final CoroutineScope coroutineScope2 = coroutineScope;
                            final CredentialViewModel credentialViewModel2 = credentialViewModel;
                            final LockPatternView lockPatternView2 = lockPatternView;
                            lockPatternView2.setOnPatternListener(new OnPatternDetectedListener(new Function1() { // from class: com.android.systemui.biometrics.ui.binder.CredentialPatternViewBinder.bind.1.1.1.1.1

                                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                                @DebugMetadata(c = "com.android.systemui.biometrics.ui.binder.CredentialPatternViewBinder$bind$1$1$1$1$1$1", f = "CredentialPatternViewBinder.kt", l = {38}, m = "invokeSuspend")
                                /* renamed from: com.android.systemui.biometrics.ui.binder.CredentialPatternViewBinder$bind$1$1$1$1$1$1, reason: invalid class name and collision with other inner class name */
                                /* loaded from: classes.dex */
                                final class C00161 extends SuspendLambda implements Function2 {
                                    final /* synthetic */ CredentialHeaderViewModel $header;
                                    final /* synthetic */ List<LockPatternView.Cell> $pattern;
                                    final /* synthetic */ CredentialViewModel $viewModel;
                                    int label;

                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    public C00161(CredentialViewModel credentialViewModel, List<LockPatternView.Cell> list, CredentialHeaderViewModel credentialHeaderViewModel, Continuation<? super C00161> continuation) {
                                        super(2, continuation);
                                        this.$viewModel = credentialViewModel;
                                        this.$pattern = list;
                                        this.$header = credentialHeaderViewModel;
                                    }

                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                    public final Continuation create(Object obj, Continuation continuation) {
                                        return new C00161(this.$viewModel, this.$pattern, this.$header, continuation);
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj, Object obj2) {
                                        return ((C00161) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                                            List<LockPatternView.Cell> list = this.$pattern;
                                            CredentialHeaderViewModel credentialHeaderViewModel = this.$header;
                                            this.label = 1;
                                            if (credentialViewModel.checkCredential(list, credentialHeaderViewModel, this) == coroutineSingletons) {
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
                                    boolean z;
                                    List list = (List) obj3;
                                    if (list.size() < 4) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    if (z) {
                                        CredentialViewModel credentialViewModel3 = CredentialViewModel.this;
                                        credentialViewModel3.getClass();
                                        credentialViewModel3.credentialInteractor._verificationError.setValue(new CredentialStatus.Fail.Error(CredentialViewModelKt.asBadCredentialErrorMessage(credentialViewModel3.applicationContext, Reflection.getOrCreateKotlinClass(BiometricPromptRequest.Credential.Pattern.class)), null, null, 6, null));
                                    } else {
                                        lockPatternView2.setEnabled(false);
                                        BuildersKt.launch$default(coroutineScope2, null, null, new C00161(CredentialViewModel.this, list, credentialHeaderViewModel, null), 3);
                                    }
                                    return Unit.INSTANCE;
                                }
                            }));
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
        @DebugMetadata(c = "com.android.systemui.biometrics.ui.binder.CredentialPatternViewBinder$bind$1$1$2", f = "CredentialPatternViewBinder.kt", l = {45}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.biometrics.ui.binder.CredentialPatternViewBinder$bind$1$1$2, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass2 extends SuspendLambda implements Function2 {
            final /* synthetic */ LockPatternView $lockPatternView;
            final /* synthetic */ CredentialViewModel $viewModel;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(CredentialViewModel credentialViewModel, LockPatternView lockPatternView, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.$viewModel = credentialViewModel;
                this.$lockPatternView = lockPatternView;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass2(this.$viewModel, this.$lockPatternView, continuation);
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
                    CredentialViewModel$special$$inlined$map$3 credentialViewModel$special$$inlined$map$3 = this.$viewModel.stealthMode;
                    final LockPatternView lockPatternView = this.$lockPatternView;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.biometrics.ui.binder.CredentialPatternViewBinder.bind.1.1.2.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            lockPatternView.setInStealthMode(((Boolean) obj2).booleanValue());
                            return Unit.INSTANCE;
                        }
                    };
                    this.label = 1;
                    if (credentialViewModel$special$$inlined$map$3.collect(flowCollector, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.biometrics.ui.binder.CredentialPatternViewBinder$bind$1$1$3", f = "CredentialPatternViewBinder.kt", l = {49}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.biometrics.ui.binder.CredentialPatternViewBinder$bind$1$1$3, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass3 extends SuspendLambda implements Function2 {
            final /* synthetic */ CredentialView.Host $host;
            final /* synthetic */ LockPatternView $lockPatternView;
            final /* synthetic */ CredentialViewModel $viewModel;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass3(CredentialViewModel credentialViewModel, LockPatternView lockPatternView, CredentialView.Host host, Continuation<? super AnonymousClass3> continuation) {
                super(2, continuation);
                this.$viewModel = credentialViewModel;
                this.$lockPatternView = lockPatternView;
                this.$host = host;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass3(this.$viewModel, this.$lockPatternView, this.$host, continuation);
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
                    final LockPatternView lockPatternView = this.$lockPatternView;
                    final CredentialView.Host host = this.$host;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.biometrics.ui.binder.CredentialPatternViewBinder.bind.1.1.3.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            boolean z;
                            byte[] bArr = (byte[]) obj2;
                            if (bArr != null) {
                                z = true;
                            } else {
                                z = false;
                            }
                            lockPatternView.setEnabled(!z);
                            if (z) {
                                Intrinsics.checkNotNull(bArr);
                                AuthContainerView authContainerView = (AuthContainerView) host;
                                authContainerView.mCredentialAttestation = bArr;
                                authContainerView.animateAway(7, true);
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(CredentialViewModel credentialViewModel, LockPatternView lockPatternView, CredentialView.Host host, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$viewModel = credentialViewModel;
            this.$lockPatternView = lockPatternView;
            this.$host = host;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$viewModel, this.$lockPatternView, this.$host, continuation);
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
                BuildersKt.launch$default(coroutineScope, null, null, new C00131(this.$viewModel, this.$lockPatternView, null), 3);
                BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass2(this.$viewModel, this.$lockPatternView, null), 3);
                BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass3(this.$viewModel, this.$lockPatternView, this.$host, null), 3);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CredentialPatternViewBinder$bind$1(CredentialViewModel credentialViewModel, LockPatternView lockPatternView, CredentialView.Host host, Continuation<? super CredentialPatternViewBinder$bind$1> continuation) {
        super(3, continuation);
        this.$viewModel = credentialViewModel;
        this.$lockPatternView = lockPatternView;
        this.$host = host;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        CredentialPatternViewBinder$bind$1 credentialPatternViewBinder$bind$1 = new CredentialPatternViewBinder$bind$1(this.$viewModel, this.$lockPatternView, this.$host, (Continuation) obj3);
        credentialPatternViewBinder$bind$1.L$0 = (LifecycleOwner) obj;
        return credentialPatternViewBinder$bind$1.invokeSuspend(Unit.INSTANCE);
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
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$viewModel, this.$lockPatternView, this.$host, null);
            this.label = 1;
            if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycleOwner, state, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
