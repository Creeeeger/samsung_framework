package com.android.systemui.keyguard.data.repository;

import android.animation.ValueAnimator;
import android.os.Trace;
import android.util.Log;
import com.android.systemui.keyguard.shared.model.KeyguardState;
import com.android.systemui.keyguard.shared.model.TransitionState;
import com.android.systemui.keyguard.shared.model.TransitionStep;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import java.util.UUID;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardTransitionRepositoryImpl implements KeyguardTransitionRepository {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final SharedFlowImpl _transitions;
    public ValueAnimator lastAnimator;
    public TransitionStep lastStep;
    public final Flow transitions;
    public UUID updateTransitionId;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public KeyguardTransitionRepositoryImpl() {
        SharedFlowImpl MutableSharedFlow = SharedFlowKt.MutableSharedFlow(2, 10, BufferOverflow.DROP_OLDEST);
        this._transitions = MutableSharedFlow;
        this.transitions = FlowKt.distinctUntilChanged(new ReadonlySharedFlow(MutableSharedFlow, null));
        this.lastStep = new TransitionStep(null, null, 0.0f, null, null, 31, null);
        KeyguardState keyguardState = KeyguardState.OFF;
        KeyguardState keyguardState2 = KeyguardState.LOCKSCREEN;
        TransitionState transitionState = TransitionState.STARTED;
        String simpleName = Reflection.getOrCreateKotlinClass(KeyguardTransitionRepositoryImpl.class).getSimpleName();
        Intrinsics.checkNotNull(simpleName);
        emitTransition(new TransitionStep(keyguardState, keyguardState2, 0.0f, transitionState, simpleName), false);
        TransitionState transitionState2 = TransitionState.FINISHED;
        String simpleName2 = Reflection.getOrCreateKotlinClass(KeyguardTransitionRepositoryImpl.class).getSimpleName();
        Intrinsics.checkNotNull(simpleName2);
        emitTransition(new TransitionStep(keyguardState, keyguardState2, 1.0f, transitionState2, simpleName2), false);
    }

    public final void emitTransition(TransitionStep transitionStep, boolean z) {
        String str;
        TransitionState transitionState = TransitionState.RUNNING;
        TransitionState transitionState2 = transitionStep.transitionState;
        if (transitionState2 != transitionState) {
            if (z) {
                str = "(manual)";
            } else {
                str = "";
            }
            String str2 = "Transition: " + transitionStep.from + " -> " + transitionStep.to + " " + str;
            int hashCode = str2.hashCode();
            if (transitionState2 == TransitionState.STARTED) {
                Trace.beginAsyncSection(str2, hashCode);
            } else if (transitionState2 == TransitionState.FINISHED || transitionState2 == TransitionState.CANCELED) {
                Trace.endAsyncSection(str2, hashCode);
            }
        }
        if (!this._transitions.tryEmit(transitionStep)) {
            Log.w("KeyguardTransitionRepository", "Failed to emit next value without suspending");
        }
        this.lastStep = transitionStep;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0088  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.UUID startTransition(final com.android.systemui.keyguard.shared.model.TransitionInfo r11, boolean r12) {
        /*
            r10 = this;
            com.android.systemui.keyguard.shared.model.TransitionStep r0 = r10.lastStep
            com.android.systemui.keyguard.shared.model.KeyguardState r1 = r0.from
            com.android.systemui.keyguard.shared.model.KeyguardState r2 = r11.from
            r3 = 0
            java.lang.String r4 = "KeyguardTransitionRepository"
            if (r1 != r2) goto L23
            com.android.systemui.keyguard.shared.model.KeyguardState r1 = r0.to
            com.android.systemui.keyguard.shared.model.KeyguardState r2 = r11.to
            if (r1 != r2) goto L23
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            java.lang.String r12 = "Duplicate call to start the transition, rejecting: "
            r10.<init>(r12)
            r10.append(r11)
            java.lang.String r10 = r10.toString()
            android.util.Log.i(r4, r10)
            return r3
        L23:
            com.android.systemui.keyguard.shared.model.TransitionState r1 = com.android.systemui.keyguard.shared.model.TransitionState.FINISHED
            com.android.systemui.keyguard.shared.model.TransitionState r2 = r0.transitionState
            if (r2 == r1) goto L47
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Transition still active: "
            r1.<init>(r2)
            r1.append(r0)
            java.lang.String r0 = ", canceling"
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            android.util.Log.i(r4, r0)
            if (r12 == 0) goto L42
            goto L47
        L42:
            com.android.systemui.keyguard.shared.model.TransitionStep r12 = r10.lastStep
            float r12 = r12.value
            goto L48
        L47:
            r12 = 0
        L48:
            r7 = r12
            android.animation.ValueAnimator r12 = r10.lastAnimator
            if (r12 == 0) goto L50
            r12.cancel()
        L50:
            android.animation.ValueAnimator r12 = r11.animator
            r10.lastAnimator = r12
            r0 = 0
            if (r12 == 0) goto L88
            r1 = 2
            float[] r1 = new float[r1]
            r1[r0] = r7
            r0 = 1
            r2 = 1065353216(0x3f800000, float:1.0)
            r1[r0] = r2
            r12.setFloatValues(r1)
            float r2 = r2 - r7
            long r0 = r12.getDuration()
            float r0 = (float) r0
            float r2 = r2 * r0
            long r0 = (long) r2
            r12.setDuration(r0)
            com.android.systemui.keyguard.data.repository.KeyguardTransitionRepositoryImpl$startTransition$1$updateListener$1 r0 = new com.android.systemui.keyguard.data.repository.KeyguardTransitionRepositoryImpl$startTransition$1$updateListener$1
            r0.<init>()
            com.android.systemui.keyguard.data.repository.KeyguardTransitionRepositoryImpl$startTransition$1$adapter$1 r1 = new com.android.systemui.keyguard.data.repository.KeyguardTransitionRepositoryImpl$startTransition$1$adapter$1
            r4 = r1
            r5 = r10
            r6 = r11
            r8 = r12
            r9 = r0
            r4.<init>()
            r12.addListener(r1)
            r12.addUpdateListener(r0)
            r12.start()
            return r3
        L88:
            com.android.systemui.keyguard.shared.model.TransitionStep r12 = new com.android.systemui.keyguard.shared.model.TransitionStep
            com.android.systemui.keyguard.shared.model.TransitionState r1 = com.android.systemui.keyguard.shared.model.TransitionState.STARTED
            r12.<init>(r11, r7, r1)
            r10.emitTransition(r12, r0)
            java.util.UUID r11 = java.util.UUID.randomUUID()
            r10.updateTransitionId = r11
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.data.repository.KeyguardTransitionRepositoryImpl.startTransition(com.android.systemui.keyguard.shared.model.TransitionInfo, boolean):java.util.UUID");
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1] */
    public final KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1 transition(final KeyguardState keyguardState, final KeyguardState keyguardState2) {
        final Flow flow = this.transitions;
        return new Flow() { // from class: com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1$2, reason: invalid class name */
            /* loaded from: classes.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ KeyguardState $from$inlined;
                public final /* synthetic */ FlowCollector $this_unsafeFlow;
                public final /* synthetic */ KeyguardState $to$inlined;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1$2", f = "KeyguardTransitionRepository.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1$2$1, reason: invalid class name */
                /* loaded from: classes.dex */
                public final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= VideoPlayer.MEDIA_ERROR_SYSTEM;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, KeyguardState keyguardState, KeyguardState keyguardState2) {
                    this.$this_unsafeFlow = flowCollector;
                    this.$from$inlined = keyguardState;
                    this.$to$inlined = keyguardState2;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
                /* JADX WARN: Removed duplicated region for block: B:21:0x0046  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(java.lang.Object r6, kotlin.coroutines.Continuation r7) {
                    /*
                        r5 = this;
                        boolean r0 = r7 instanceof com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r7
                        com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1$2$1 r0 = (com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1$2$1 r0 = new com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1$2$1
                        r0.<init>(r7)
                    L18:
                        java.lang.Object r7 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L2f
                        if (r2 != r3) goto L27
                        kotlin.ResultKt.throwOnFailure(r7)
                        goto L51
                    L27:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L2f:
                        kotlin.ResultKt.throwOnFailure(r7)
                        r7 = r6
                        com.android.systemui.keyguard.shared.model.TransitionStep r7 = (com.android.systemui.keyguard.shared.model.TransitionStep) r7
                        com.android.systemui.keyguard.shared.model.KeyguardState r2 = r7.from
                        com.android.systemui.keyguard.shared.model.KeyguardState r4 = r5.$from$inlined
                        if (r2 != r4) goto L43
                        com.android.systemui.keyguard.shared.model.KeyguardState r2 = r5.$to$inlined
                        com.android.systemui.keyguard.shared.model.KeyguardState r7 = r7.to
                        if (r7 != r2) goto L43
                        r7 = r3
                        goto L44
                    L43:
                        r7 = 0
                    L44:
                        if (r7 == 0) goto L51
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r5 = r5.$this_unsafeFlow
                        java.lang.Object r5 = r5.emit(r6, r0)
                        if (r5 != r1) goto L51
                        return r1
                    L51:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                Object collect = Flow.this.collect(new AnonymousClass2(flowCollector, keyguardState, keyguardState2), continuation);
                if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return collect;
                }
                return Unit.INSTANCE;
            }
        };
    }
}
