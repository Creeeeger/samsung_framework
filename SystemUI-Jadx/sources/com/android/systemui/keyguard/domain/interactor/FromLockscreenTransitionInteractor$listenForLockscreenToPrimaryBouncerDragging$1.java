package com.android.systemui.keyguard.domain.interactor;

import android.util.Log;
import com.android.systemui.keyguard.data.repository.KeyguardTransitionRepositoryImpl;
import com.android.systemui.keyguard.shared.model.KeyguardState;
import com.android.systemui.keyguard.shared.model.StatusBarState;
import com.android.systemui.keyguard.shared.model.TransitionInfo;
import com.android.systemui.keyguard.shared.model.TransitionState;
import com.android.systemui.keyguard.shared.model.TransitionStep;
import com.android.systemui.shade.data.repository.ShadeRepositoryImpl;
import com.android.systemui.shade.domain.model.ShadeModel;
import com.android.systemui.util.kotlin.FlowKt;
import com.android.systemui.util.kotlin.Quad;
import com.android.systemui.util.kotlin.Utils;
import java.util.UUID;
import kotlin.ResultKt;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SafeFlow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.domain.interactor.FromLockscreenTransitionInteractor$listenForLockscreenToPrimaryBouncerDragging$1", f = "FromLockscreenTransitionInteractor.kt", l = {156}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class FromLockscreenTransitionInteractor$listenForLockscreenToPrimaryBouncerDragging$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Ref$ObjectRef<UUID> $transitionId;
    int label;
    final /* synthetic */ FromLockscreenTransitionInteractor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.keyguard.domain.interactor.FromLockscreenTransitionInteractor$listenForLockscreenToPrimaryBouncerDragging$1$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final /* synthetic */ class AnonymousClass2 extends AdaptedFunctionReference implements Function4 {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        public AnonymousClass2() {
            super(4, Triple.class, "<init>", "<init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V", 4);
        }

        @Override // kotlin.jvm.functions.Function4
        public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
            return new Triple((TransitionStep) obj, (StatusBarState) obj2, Boolean.valueOf(((Boolean) obj3).booleanValue()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.keyguard.domain.interactor.FromLockscreenTransitionInteractor$listenForLockscreenToPrimaryBouncerDragging$1$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final /* synthetic */ class AnonymousClass3 extends AdaptedFunctionReference implements Function3 {
        public AnonymousClass3(Object obj) {
            super(3, obj, Utils.Companion.class, "toQuad", "toQuad(Ljava/lang/Object;Lkotlin/Triple;)Lcom/android/systemui/util/kotlin/Quad;", 4);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            ((Utils.Companion) this.receiver).getClass();
            return Utils.Companion.toQuad((ShadeModel) obj, (Triple) obj2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FromLockscreenTransitionInteractor$listenForLockscreenToPrimaryBouncerDragging$1(FromLockscreenTransitionInteractor fromLockscreenTransitionInteractor, Ref$ObjectRef<UUID> ref$ObjectRef, Continuation<? super FromLockscreenTransitionInteractor$listenForLockscreenToPrimaryBouncerDragging$1> continuation) {
        super(2, continuation);
        this.this$0 = fromLockscreenTransitionInteractor;
        this.$transitionId = ref$ObjectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FromLockscreenTransitionInteractor$listenForLockscreenToPrimaryBouncerDragging$1(this.this$0, this.$transitionId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FromLockscreenTransitionInteractor$listenForLockscreenToPrimaryBouncerDragging$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
            FromLockscreenTransitionInteractor fromLockscreenTransitionInteractor = this.this$0;
            Flow flow = ((ShadeRepositoryImpl) fromLockscreenTransitionInteractor.shadeRepository).shadeModel;
            KeyguardTransitionInteractor$special$$inlined$filter$4 keyguardTransitionInteractor$special$$inlined$filter$4 = fromLockscreenTransitionInteractor.keyguardTransitionInteractor.startedKeyguardTransitionStep;
            KeyguardInteractor keyguardInteractor = fromLockscreenTransitionInteractor.keyguardInteractor;
            SafeFlow sample = FlowKt.sample(flow, kotlinx.coroutines.flow.FlowKt.combine(keyguardTransitionInteractor$special$$inlined$filter$4, keyguardInteractor.statusBarState, keyguardInteractor.isKeyguardUnlocked, AnonymousClass2.INSTANCE), new AnonymousClass3(Utils.Companion));
            final Ref$ObjectRef<UUID> ref$ObjectRef = this.$transitionId;
            final FromLockscreenTransitionInteractor fromLockscreenTransitionInteractor2 = this.this$0;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.keyguard.domain.interactor.FromLockscreenTransitionInteractor$listenForLockscreenToPrimaryBouncerDragging$1.4
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r8v3, types: [T, java.util.UUID] */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    ?? startTransition;
                    boolean z;
                    boolean z2;
                    TransitionState transitionState;
                    Quad quad = (Quad) obj2;
                    ShadeModel shadeModel = (ShadeModel) quad.first;
                    TransitionStep transitionStep = (TransitionStep) quad.second;
                    StatusBarState statusBarState = (StatusBarState) quad.third;
                    boolean booleanValue = ((Boolean) quad.fourth).booleanValue();
                    Ref$ObjectRef ref$ObjectRef2 = ref$ObjectRef;
                    UUID uuid = (UUID) ref$ObjectRef2.element;
                    FromLockscreenTransitionInteractor fromLockscreenTransitionInteractor3 = fromLockscreenTransitionInteractor2;
                    if (uuid != null) {
                        KeyguardState keyguardState = transitionStep.to;
                        KeyguardState keyguardState2 = KeyguardState.PRIMARY_BOUNCER;
                        if (keyguardState == keyguardState2) {
                            float f = shadeModel.expansionAmount;
                            if (f == 0.0f) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (z) {
                                transitionState = TransitionState.FINISHED;
                            } else {
                                if (f == 1.0f) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if (z2) {
                                    transitionState = TransitionState.CANCELED;
                                } else {
                                    transitionState = TransitionState.RUNNING;
                                }
                            }
                            float f2 = 1.0f - f;
                            KeyguardTransitionRepositoryImpl keyguardTransitionRepositoryImpl = (KeyguardTransitionRepositoryImpl) fromLockscreenTransitionInteractor3.keyguardTransitionRepository;
                            if (!Intrinsics.areEqual(keyguardTransitionRepositoryImpl.updateTransitionId, uuid)) {
                                Log.wtf("KeyguardTransitionRepository", "Attempting to update with old/invalid transitionId: " + uuid);
                            } else {
                                if (transitionState == TransitionState.FINISHED || transitionState == TransitionState.CANCELED) {
                                    keyguardTransitionRepositoryImpl.updateTransitionId = null;
                                }
                                keyguardTransitionRepositoryImpl.emitTransition(TransitionStep.copy$default(keyguardTransitionRepositoryImpl.lastStep, f2, transitionState, 19), true);
                            }
                            TransitionState transitionState2 = TransitionState.CANCELED;
                            if (transitionState == transitionState2 || transitionState == TransitionState.FINISHED) {
                                ref$ObjectRef2.element = null;
                            }
                            if (transitionState == transitionState2) {
                                KeyguardState keyguardState3 = KeyguardState.LOCKSCREEN;
                                Duration.Companion companion = Duration.Companion;
                                ((KeyguardTransitionRepositoryImpl) fromLockscreenTransitionInteractor3.keyguardTransitionRepository).startTransition(new TransitionInfo(fromLockscreenTransitionInteractor3.name, keyguardState2, keyguardState3, fromLockscreenTransitionInteractor3.m1286getAnimatorLRDsOJo(DurationKt.toDuration(0, DurationUnit.MILLISECONDS))), false);
                            }
                        }
                    } else {
                        KeyguardState keyguardState4 = transitionStep.to;
                        KeyguardState keyguardState5 = KeyguardState.LOCKSCREEN;
                        if (keyguardState4 == keyguardState5 && shadeModel.isUserDragging && !booleanValue && statusBarState == StatusBarState.KEYGUARD) {
                            startTransition = ((KeyguardTransitionRepositoryImpl) fromLockscreenTransitionInteractor3.keyguardTransitionRepository).startTransition(new TransitionInfo(fromLockscreenTransitionInteractor3.name, keyguardState5, KeyguardState.PRIMARY_BOUNCER, null), false);
                            ref$ObjectRef2.element = startTransition;
                        }
                    }
                    return Unit.INSTANCE;
                }
            };
            this.label = 1;
            if (sample.collect(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
