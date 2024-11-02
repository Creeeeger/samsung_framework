package com.android.systemui.keyguard.domain.interactor;

import com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository;
import com.android.systemui.keyguard.data.repository.KeyguardTransitionRepositoryImpl;
import com.android.systemui.keyguard.shared.model.KeyguardState;
import com.android.systemui.keyguard.shared.model.TransitionInfo;
import com.android.systemui.keyguard.shared.model.TransitionStep;
import com.android.systemui.util.kotlin.FlowKt;
import com.android.systemui.util.kotlin.Utils;
import java.util.Set;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.SafeFlow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.domain.interactor.FromLockscreenTransitionInteractor$listenForLockscreenToDreaming$1", f = "FromLockscreenTransitionInteractor.kt", l = {78}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class FromLockscreenTransitionInteractor$listenForLockscreenToDreaming$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Set<KeyguardState> $invalidFromStates;
    int label;
    final /* synthetic */ FromLockscreenTransitionInteractor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.keyguard.domain.interactor.FromLockscreenTransitionInteractor$listenForLockscreenToDreaming$1$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final /* synthetic */ class AnonymousClass2 extends AdaptedFunctionReference implements Function3 {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        public AnonymousClass2() {
            super(3, Pair.class, "<init>", "<init>(Ljava/lang/Object;Ljava/lang/Object;)V", 4);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            return new Pair((TransitionStep) obj, (KeyguardState) obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.keyguard.domain.interactor.FromLockscreenTransitionInteractor$listenForLockscreenToDreaming$1$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final /* synthetic */ class AnonymousClass3 extends AdaptedFunctionReference implements Function3 {
        public AnonymousClass3(Object obj) {
            super(3, obj, Utils.Companion.class, "toTriple", "toTriple(Ljava/lang/Object;Lkotlin/Pair;)Lkotlin/Triple;", 4);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            boolean booleanValue = ((Boolean) obj).booleanValue();
            Utils.Companion companion = (Utils.Companion) this.receiver;
            Boolean valueOf = Boolean.valueOf(booleanValue);
            companion.getClass();
            return Utils.Companion.toTriple(valueOf, (Pair) obj2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FromLockscreenTransitionInteractor$listenForLockscreenToDreaming$1(FromLockscreenTransitionInteractor fromLockscreenTransitionInteractor, Set<? extends KeyguardState> set, Continuation<? super FromLockscreenTransitionInteractor$listenForLockscreenToDreaming$1> continuation) {
        super(2, continuation);
        this.this$0 = fromLockscreenTransitionInteractor;
        this.$invalidFromStates = set;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FromLockscreenTransitionInteractor$listenForLockscreenToDreaming$1(this.this$0, this.$invalidFromStates, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FromLockscreenTransitionInteractor$listenForLockscreenToDreaming$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
            Flow flow = fromLockscreenTransitionInteractor.keyguardInteractor.isAbleToDream;
            KeyguardTransitionInteractor keyguardTransitionInteractor = fromLockscreenTransitionInteractor.keyguardTransitionInteractor;
            SafeFlow sample = FlowKt.sample(flow, new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(keyguardTransitionInteractor.startedKeyguardTransitionStep, keyguardTransitionInteractor.finishedKeyguardState, AnonymousClass2.INSTANCE), new AnonymousClass3(Utils.Companion));
            final Set<KeyguardState> set = this.$invalidFromStates;
            final FromLockscreenTransitionInteractor fromLockscreenTransitionInteractor2 = this.this$0;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.keyguard.domain.interactor.FromLockscreenTransitionInteractor$listenForLockscreenToDreaming$1.4
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    boolean z;
                    Triple triple = (Triple) obj2;
                    boolean booleanValue = ((Boolean) triple.component1()).booleanValue();
                    TransitionStep transitionStep = (TransitionStep) triple.component2();
                    KeyguardState keyguardState = (KeyguardState) triple.component3();
                    KeyguardState keyguardState2 = KeyguardState.LOCKSCREEN;
                    boolean z2 = true;
                    if (keyguardState == keyguardState2) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (transitionStep.to != keyguardState2 || set.contains(transitionStep.from)) {
                        z2 = false;
                    }
                    if (booleanValue && (z || z2)) {
                        FromLockscreenTransitionInteractor fromLockscreenTransitionInteractor3 = fromLockscreenTransitionInteractor2;
                        KeyguardTransitionRepository keyguardTransitionRepository = fromLockscreenTransitionInteractor3.keyguardTransitionRepository;
                        KeyguardState keyguardState3 = KeyguardState.DREAMING;
                        FromLockscreenTransitionInteractor.Companion.getClass();
                        ((KeyguardTransitionRepositoryImpl) keyguardTransitionRepository).startTransition(new TransitionInfo(fromLockscreenTransitionInteractor3.name, keyguardState2, keyguardState3, fromLockscreenTransitionInteractor3.m1286getAnimatorLRDsOJo(FromLockscreenTransitionInteractor.TO_DREAMING_DURATION)), false);
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
