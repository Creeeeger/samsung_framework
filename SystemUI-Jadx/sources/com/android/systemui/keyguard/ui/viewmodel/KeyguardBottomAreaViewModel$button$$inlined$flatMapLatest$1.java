package com.android.systemui.keyguard.ui.viewmodel;

import com.android.systemui.keyguard.shared.quickaffordance.KeyguardQuickAffordancePosition;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.ui.viewmodel.KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1", f = "KeyguardBottomAreaViewModel.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getAutoCallPickupState, 190}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3 {
    final /* synthetic */ KeyguardQuickAffordancePosition $position$inlined;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;
    final /* synthetic */ KeyguardBottomAreaViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1(Continuation continuation, KeyguardBottomAreaViewModel keyguardBottomAreaViewModel, KeyguardQuickAffordancePosition keyguardQuickAffordancePosition) {
        super(3, continuation);
        this.this$0 = keyguardBottomAreaViewModel;
        this.$position$inlined = keyguardQuickAffordancePosition;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1 keyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1 = new KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1((Continuation) obj3, this.this$0, this.$position$inlined);
        keyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1.L$0 = (FlowCollector) obj;
        keyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1.L$1 = obj2;
        return keyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00b0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0087  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            r13 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r13.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L25
            if (r1 == r3) goto L19
            if (r1 != r2) goto L11
            kotlin.ResultKt.throwOnFailure(r14)
            goto Lb1
        L11:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L19:
            java.lang.Object r1 = r13.L$1
            com.android.systemui.keyguard.ui.viewmodel.KeyguardBottomAreaViewModel$PreviewMode r1 = (com.android.systemui.keyguard.ui.viewmodel.KeyguardBottomAreaViewModel.PreviewMode) r1
            java.lang.Object r3 = r13.L$0
            kotlinx.coroutines.flow.FlowCollector r3 = (kotlinx.coroutines.flow.FlowCollector) r3
            kotlin.ResultKt.throwOnFailure(r14)
            goto L55
        L25:
            kotlin.ResultKt.throwOnFailure(r14)
            java.lang.Object r14 = r13.L$0
            kotlinx.coroutines.flow.FlowCollector r14 = (kotlinx.coroutines.flow.FlowCollector) r14
            java.lang.Object r1 = r13.L$1
            com.android.systemui.keyguard.ui.viewmodel.KeyguardBottomAreaViewModel$PreviewMode r1 = (com.android.systemui.keyguard.ui.viewmodel.KeyguardBottomAreaViewModel.PreviewMode) r1
            boolean r4 = r1.isInPreviewMode
            if (r4 == 0) goto L3f
            com.android.systemui.keyguard.ui.viewmodel.KeyguardBottomAreaViewModel r3 = r13.this$0
            com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor r3 = r3.quickAffordanceInteractor
            com.android.systemui.keyguard.shared.quickaffordance.KeyguardQuickAffordancePosition r4 = r13.$position$inlined
            kotlinx.coroutines.flow.Flow r3 = r3.quickAffordanceAlwaysVisible(r4)
            goto L5a
        L3f:
            com.android.systemui.keyguard.ui.viewmodel.KeyguardBottomAreaViewModel r4 = r13.this$0
            com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor r4 = r4.quickAffordanceInteractor
            com.android.systemui.keyguard.shared.quickaffordance.KeyguardQuickAffordancePosition r5 = r13.$position$inlined
            r13.L$0 = r14
            r13.L$1 = r1
            r13.label = r3
            java.lang.Object r3 = r4.quickAffordance(r5, r13)
            if (r3 != r0) goto L52
            return r0
        L52:
            r12 = r3
            r3 = r14
            r14 = r12
        L55:
            kotlinx.coroutines.flow.Flow r14 = (kotlinx.coroutines.flow.Flow) r14
            r12 = r3
            r3 = r14
            r14 = r12
        L5a:
            com.android.systemui.keyguard.ui.viewmodel.KeyguardBottomAreaViewModel r4 = r13.this$0
            com.android.systemui.keyguard.domain.interactor.KeyguardBottomAreaInteractor r4 = r4.bottomAreaInteractor
            kotlinx.coroutines.flow.StateFlow r4 = r4.animateDozingTransitions
            kotlinx.coroutines.flow.Flow r4 = kotlinx.coroutines.flow.FlowKt.distinctUntilChanged(r4)
            com.android.systemui.keyguard.ui.viewmodel.KeyguardBottomAreaViewModel r5 = r13.this$0
            kotlinx.coroutines.flow.Flow r6 = r5.areQuickAffordancesFullyOpaque
            kotlinx.coroutines.flow.StateFlowImpl r7 = r5.selectedPreviewSlotId
            com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor r5 = r5.quickAffordanceInteractor
            r5.getClass()
            com.android.systemui.flags.ReleasedFlag r8 = com.android.systemui.flags.Flags.CUSTOMIZABLE_LOCK_SCREEN_QUICK_AFFORDANCES
            com.android.systemui.flags.FeatureFlags r9 = r5.featureFlags
            com.android.systemui.flags.FeatureFlagsRelease r9 = (com.android.systemui.flags.FeatureFlagsRelease) r9
            boolean r8 = r9.isEnabled(r8)
            if (r8 == 0) goto L87
            com.android.systemui.dock.DockManager r5 = r5.dockManager
            kotlinx.coroutines.flow.Flow r5 = com.android.systemui.dock.DockManagerExtensionsKt.retrieveIsDocked(r5)
            com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$useLongPress$$inlined$map$1 r8 = new com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$useLongPress$$inlined$map$1
            r8.<init>()
            goto L8e
        L87:
            java.lang.Boolean r5 = java.lang.Boolean.FALSE
            kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2 r8 = new kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2
            r8.<init>(r5)
        L8e:
            com.android.systemui.keyguard.ui.viewmodel.KeyguardBottomAreaViewModel$button$1$1 r9 = new com.android.systemui.keyguard.ui.viewmodel.KeyguardBottomAreaViewModel$button$1$1
            com.android.systemui.keyguard.shared.quickaffordance.KeyguardQuickAffordancePosition r5 = r13.$position$inlined
            com.android.systemui.keyguard.ui.viewmodel.KeyguardBottomAreaViewModel r10 = r13.this$0
            r11 = 0
            r9.<init>(r5, r10, r1, r11)
            r5 = r6
            r6 = r7
            r7 = r8
            r8 = r9
            kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3 r1 = kotlinx.coroutines.flow.FlowKt.combine(r3, r4, r5, r6, r7, r8)
            kotlinx.coroutines.flow.Flow r1 = kotlinx.coroutines.flow.FlowKt.distinctUntilChanged(r1)
            r13.L$0 = r11
            r13.L$1 = r11
            r13.label = r2
            java.lang.Object r13 = kotlinx.coroutines.flow.FlowKt.emitAll(r13, r1, r14)
            if (r13 != r0) goto Lb1
            return r0
        Lb1:
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.ui.viewmodel.KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
