package com.android.systemui.keyguard.ui.viewmodel;

import com.android.app.animation.Interpolators;
import com.android.systemui.keyguard.domain.interactor.FromPrimaryBouncerTransitionInteractor;
import com.android.systemui.keyguard.domain.interactor.KeyguardTransitionInteractor;
import com.android.systemui.keyguard.domain.interactor.PrimaryBouncerInteractor;
import com.android.systemui.keyguard.ui.KeyguardTransitionAnimationFlow;
import com.android.systemui.statusbar.StatusBarStateControllerImpl;
import com.android.systemui.statusbar.SysuiStatusBarStateController;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PrimaryBouncerToGoneTransitionViewModel {
    public final FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 bouncerAlpha;
    public boolean leaveShadeOpen;
    public final PrimaryBouncerInteractor primaryBouncerInteractor;
    public final PrimaryBouncerToGoneTransitionViewModel$special$$inlined$map$1 scrimAlpha;
    public final SysuiStatusBarStateController statusBarStateController;
    public boolean willRunDismissFromKeyguard;

    /* JADX WARN: Type inference failed for: r2v4, types: [com.android.systemui.keyguard.ui.viewmodel.PrimaryBouncerToGoneTransitionViewModel$special$$inlined$map$1] */
    public PrimaryBouncerToGoneTransitionViewModel(KeyguardTransitionInteractor keyguardTransitionInteractor, SysuiStatusBarStateController sysuiStatusBarStateController, PrimaryBouncerInteractor primaryBouncerInteractor) {
        this.statusBarStateController = sysuiStatusBarStateController;
        this.primaryBouncerInteractor = primaryBouncerInteractor;
        FromPrimaryBouncerTransitionInteractor.Companion.getClass();
        long j = FromPrimaryBouncerTransitionInteractor.TO_GONE_DURATION;
        KeyguardTransitionAnimationFlow keyguardTransitionAnimationFlow = new KeyguardTransitionAnimationFlow(j, keyguardTransitionInteractor.primaryBouncerToGoneTransition, null);
        Duration.Companion companion = Duration.Companion;
        this.bouncerAlpha = KeyguardTransitionAnimationFlow.m1287createFlow53AowQI$default(keyguardTransitionAnimationFlow, DurationKt.toDuration(200, DurationUnit.MILLISECONDS), new Function1() { // from class: com.android.systemui.keyguard.ui.viewmodel.PrimaryBouncerToGoneTransitionViewModel$bouncerAlpha$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                float f;
                float floatValue = ((Number) obj).floatValue();
                if (PrimaryBouncerToGoneTransitionViewModel.this.willRunDismissFromKeyguard) {
                    f = 0.0f;
                } else {
                    f = 1.0f - floatValue;
                }
                return Float.valueOf(f);
            }
        }, 0L, new Function0() { // from class: com.android.systemui.keyguard.ui.viewmodel.PrimaryBouncerToGoneTransitionViewModel$bouncerAlpha$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                PrimaryBouncerToGoneTransitionViewModel primaryBouncerToGoneTransitionViewModel = PrimaryBouncerToGoneTransitionViewModel.this;
                primaryBouncerToGoneTransitionViewModel.willRunDismissFromKeyguard = primaryBouncerToGoneTransitionViewModel.primaryBouncerInteractor.willRunDismissFromKeyguard();
                return Unit.INSTANCE;
            }
        }, null, null, null, 116);
        final FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 m1287createFlow53AowQI$default = KeyguardTransitionAnimationFlow.m1287createFlow53AowQI$default(keyguardTransitionAnimationFlow, j, new Function1() { // from class: com.android.systemui.keyguard.ui.viewmodel.PrimaryBouncerToGoneTransitionViewModel$scrimAlpha$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Float.valueOf(1.0f - ((Number) obj).floatValue());
            }
        }, 0L, new Function0() { // from class: com.android.systemui.keyguard.ui.viewmodel.PrimaryBouncerToGoneTransitionViewModel$scrimAlpha$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                PrimaryBouncerToGoneTransitionViewModel primaryBouncerToGoneTransitionViewModel = PrimaryBouncerToGoneTransitionViewModel.this;
                primaryBouncerToGoneTransitionViewModel.leaveShadeOpen = ((StatusBarStateControllerImpl) primaryBouncerToGoneTransitionViewModel.statusBarStateController).mLeaveOpenOnKeyguardHide;
                primaryBouncerToGoneTransitionViewModel.willRunDismissFromKeyguard = primaryBouncerToGoneTransitionViewModel.primaryBouncerInteractor.willRunDismissFromKeyguard();
                return Unit.INSTANCE;
            }
        }, null, null, Interpolators.EMPHASIZED_ACCELERATE, 52);
        this.scrimAlpha = new Flow() { // from class: com.android.systemui.keyguard.ui.viewmodel.PrimaryBouncerToGoneTransitionViewModel$special$$inlined$map$1

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.keyguard.ui.viewmodel.PrimaryBouncerToGoneTransitionViewModel$special$$inlined$map$1$2, reason: invalid class name */
            /* loaded from: classes.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;
                public final /* synthetic */ PrimaryBouncerToGoneTransitionViewModel this$0;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.keyguard.ui.viewmodel.PrimaryBouncerToGoneTransitionViewModel$special$$inlined$map$1$2", f = "PrimaryBouncerToGoneTransitionViewModel.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.keyguard.ui.viewmodel.PrimaryBouncerToGoneTransitionViewModel$special$$inlined$map$1$2$1, reason: invalid class name */
                /* loaded from: classes.dex */
                public final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
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

                public AnonymousClass2(FlowCollector flowCollector, PrimaryBouncerToGoneTransitionViewModel primaryBouncerToGoneTransitionViewModel) {
                    this.$this_unsafeFlow = flowCollector;
                    this.this$0 = primaryBouncerToGoneTransitionViewModel;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(java.lang.Object r19, kotlin.coroutines.Continuation r20) {
                    /*
                        r18 = this;
                        r0 = r18
                        r1 = r20
                        boolean r2 = r1 instanceof com.android.systemui.keyguard.ui.viewmodel.PrimaryBouncerToGoneTransitionViewModel$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r2 == 0) goto L17
                        r2 = r1
                        com.android.systemui.keyguard.ui.viewmodel.PrimaryBouncerToGoneTransitionViewModel$special$$inlined$map$1$2$1 r2 = (com.android.systemui.keyguard.ui.viewmodel.PrimaryBouncerToGoneTransitionViewModel$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r2
                        int r3 = r2.label
                        r4 = -2147483648(0xffffffff80000000, float:-0.0)
                        r5 = r3 & r4
                        if (r5 == 0) goto L17
                        int r3 = r3 - r4
                        r2.label = r3
                        goto L1c
                    L17:
                        com.android.systemui.keyguard.ui.viewmodel.PrimaryBouncerToGoneTransitionViewModel$special$$inlined$map$1$2$1 r2 = new com.android.systemui.keyguard.ui.viewmodel.PrimaryBouncerToGoneTransitionViewModel$special$$inlined$map$1$2$1
                        r2.<init>(r1)
                    L1c:
                        java.lang.Object r1 = r2.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r4 = r2.label
                        r5 = 1
                        if (r4 == 0) goto L33
                        if (r4 != r5) goto L2b
                        kotlin.ResultKt.throwOnFailure(r1)
                        goto L77
                    L2b:
                        java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                        java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
                        r0.<init>(r1)
                        throw r0
                    L33:
                        kotlin.ResultKt.throwOnFailure(r1)
                        r1 = r19
                        java.lang.Number r1 = (java.lang.Number) r1
                        r1.floatValue()
                        com.android.systemui.keyguard.ui.viewmodel.PrimaryBouncerToGoneTransitionViewModel r1 = r0.this$0
                        boolean r4 = r1.willRunDismissFromKeyguard
                        if (r4 == 0) goto L4f
                        com.android.systemui.keyguard.shared.model.ScrimAlpha r1 = new com.android.systemui.keyguard.shared.model.ScrimAlpha
                        r7 = 0
                        r8 = 0
                        r9 = 0
                        r10 = 7
                        r11 = 0
                        r6 = r1
                        r6.<init>(r7, r8, r9, r10, r11)
                        goto L6c
                    L4f:
                        boolean r1 = r1.leaveShadeOpen
                        if (r1 == 0) goto L5f
                        com.android.systemui.keyguard.shared.model.ScrimAlpha r1 = new com.android.systemui.keyguard.shared.model.ScrimAlpha
                        r7 = 0
                        r8 = 0
                        r9 = 0
                        r10 = 1
                        r11 = 0
                        r6 = r1
                        r6.<init>(r7, r8, r9, r10, r11)
                        goto L6c
                    L5f:
                        com.android.systemui.keyguard.shared.model.ScrimAlpha r1 = new com.android.systemui.keyguard.shared.model.ScrimAlpha
                        r13 = 0
                        r14 = 0
                        r15 = 0
                        r16 = 5
                        r17 = 0
                        r12 = r1
                        r12.<init>(r13, r14, r15, r16, r17)
                    L6c:
                        r2.label = r5
                        kotlinx.coroutines.flow.FlowCollector r0 = r0.$this_unsafeFlow
                        java.lang.Object r0 = r0.emit(r1, r2)
                        if (r0 != r3) goto L77
                        return r3
                    L77:
                        kotlin.Unit r0 = kotlin.Unit.INSTANCE
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.ui.viewmodel.PrimaryBouncerToGoneTransitionViewModel$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                Object collect = Flow.this.collect(new AnonymousClass2(flowCollector, this), continuation);
                if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return collect;
                }
                return Unit.INSTANCE;
            }
        };
    }
}
