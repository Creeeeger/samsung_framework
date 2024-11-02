package com.android.systemui.statusbar.phone;

import android.telephony.SubscriptionManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.RepeatOnLifecycleKt;
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
import kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.phone.CarrierHomeLogoViewController$onViewAttached$1", f = "CarrierHomeLogoViewController.kt", l = {173}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class CarrierHomeLogoViewController$onViewAttached$1 extends SuspendLambda implements Function3 {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ CarrierHomeLogoViewController this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.statusbar.phone.CarrierHomeLogoViewController$onViewAttached$1$1", f = "CarrierHomeLogoViewController.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.statusbar.phone.CarrierHomeLogoViewController$onViewAttached$1$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ CarrierHomeLogoViewController this$0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.statusbar.phone.CarrierHomeLogoViewController$onViewAttached$1$1$1", f = "CarrierHomeLogoViewController.kt", l = {175}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.statusbar.phone.CarrierHomeLogoViewController$onViewAttached$1$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes2.dex */
        public final class C00861 extends SuspendLambda implements Function2 {
            int label;
            final /* synthetic */ CarrierHomeLogoViewController this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00861(CarrierHomeLogoViewController carrierHomeLogoViewController, Continuation<? super C00861> continuation) {
                super(2, continuation);
                this.this$0 = carrierHomeLogoViewController;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C00861(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C00861) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                    final CarrierHomeLogoViewController carrierHomeLogoViewController = this.this$0;
                    FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 = carrierHomeLogoViewController.simStateChanged;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.statusbar.phone.CarrierHomeLogoViewController.onViewAttached.1.1.1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            CarrierHomeLogoViewController carrierHomeLogoViewController2 = CarrierHomeLogoViewController.this;
                            CarrierHomeLogoViewController.access$updateSimTypes(carrierHomeLogoViewController2);
                            carrierHomeLogoViewController2.updateCarrierLogoVisibility();
                            return Unit.INSTANCE;
                        }
                    };
                    this.label = 1;
                    if (flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.collect(flowCollector, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.statusbar.phone.CarrierHomeLogoViewController$onViewAttached$1$1$2", f = "CarrierHomeLogoViewController.kt", l = {182}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.statusbar.phone.CarrierHomeLogoViewController$onViewAttached$1$1$2, reason: invalid class name */
        /* loaded from: classes2.dex */
        public final class AnonymousClass2 extends SuspendLambda implements Function2 {
            int label;
            final /* synthetic */ CarrierHomeLogoViewController this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(CarrierHomeLogoViewController carrierHomeLogoViewController, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.this$0 = carrierHomeLogoViewController;
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
                    final CarrierHomeLogoViewController carrierHomeLogoViewController = this.this$0;
                    CarrierHomeLogoViewController$special$$inlined$map$1 carrierHomeLogoViewController$special$$inlined$map$1 = carrierHomeLogoViewController.serviceStateChanged;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.statusbar.phone.CarrierHomeLogoViewController.onViewAttached.1.1.2.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            boolean z;
                            CarrierHomeLogoViewController carrierHomeLogoViewController2 = CarrierHomeLogoViewController.this;
                            carrierHomeLogoViewController2.getClass();
                            int slotIndex = SubscriptionManager.getSlotIndex(SubscriptionManager.getDefaultSubscriptionId());
                            CarrierLogoVisibilityManager carrierLogoVisibilityManager = carrierHomeLogoViewController2.carrierLogoVisibilityManager;
                            ServiceStateModel serviceStateModel = (ServiceStateModel) carrierLogoVisibilityManager.serviceStateHash.get(Integer.valueOf(slotIndex));
                            if (serviceStateModel != null) {
                                if (serviceStateModel.connected && !serviceStateModel.roaming) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                carrierLogoVisibilityManager.networkCondition = z;
                            }
                            carrierHomeLogoViewController2.updateCarrierLogoVisibility();
                            return Unit.INSTANCE;
                        }
                    };
                    this.label = 1;
                    if (carrierHomeLogoViewController$special$$inlined$map$1.collect(flowCollector, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.statusbar.phone.CarrierHomeLogoViewController$onViewAttached$1$1$3", f = "CarrierHomeLogoViewController.kt", l = {189}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.statusbar.phone.CarrierHomeLogoViewController$onViewAttached$1$1$3, reason: invalid class name */
        /* loaded from: classes2.dex */
        public final class AnonymousClass3 extends SuspendLambda implements Function2 {
            int label;
            final /* synthetic */ CarrierHomeLogoViewController this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass3(CarrierHomeLogoViewController carrierHomeLogoViewController, Continuation<? super AnonymousClass3> continuation) {
                super(2, continuation);
                this.this$0 = carrierHomeLogoViewController;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass3(this.this$0, continuation);
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
                    final CarrierHomeLogoViewController carrierHomeLogoViewController = this.this$0;
                    Flow flow = carrierHomeLogoViewController.spnUpdated;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.statusbar.phone.CarrierHomeLogoViewController.onViewAttached.1.1.3.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            CarrierHomeLogoViewController carrierHomeLogoViewController2 = CarrierHomeLogoViewController.this;
                            CarrierHomeLogoViewController.access$updateSimTypes(carrierHomeLogoViewController2);
                            carrierHomeLogoViewController2.updateCarrierLogoVisibility();
                            return Unit.INSTANCE;
                        }
                    };
                    this.label = 1;
                    if (flow.collect(flowCollector, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(CarrierHomeLogoViewController carrierHomeLogoViewController, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = carrierHomeLogoViewController;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
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
                BuildersKt.launch$default(coroutineScope, null, null, new C00861(this.this$0, null), 3);
                BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass2(this.this$0, null), 3);
                BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass3(this.this$0, null), 3);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CarrierHomeLogoViewController$onViewAttached$1(CarrierHomeLogoViewController carrierHomeLogoViewController, Continuation<? super CarrierHomeLogoViewController$onViewAttached$1> continuation) {
        super(3, continuation);
        this.this$0 = carrierHomeLogoViewController;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        CarrierHomeLogoViewController$onViewAttached$1 carrierHomeLogoViewController$onViewAttached$1 = new CarrierHomeLogoViewController$onViewAttached$1(this.this$0, (Continuation) obj3);
        carrierHomeLogoViewController$onViewAttached$1.L$0 = (LifecycleOwner) obj;
        return carrierHomeLogoViewController$onViewAttached$1.invokeSuspend(Unit.INSTANCE);
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
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, null);
            this.label = 1;
            if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycleOwner, state, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
