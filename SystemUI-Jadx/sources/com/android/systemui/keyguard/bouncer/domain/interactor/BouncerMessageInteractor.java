package com.android.systemui.keyguard.bouncer.domain.interactor;

import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.Flags;
import com.android.systemui.keyguard.bouncer.data.factory.BouncerMessageFactory;
import com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepository;
import com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl;
import com.android.systemui.keyguard.bouncer.shared.model.BouncerMessageModel;
import com.android.systemui.keyguard.bouncer.shared.model.Message;
import com.android.systemui.user.data.repository.UserRepository;
import com.android.systemui.user.data.repository.UserRepositoryImpl;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;
import kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.StateFlowImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BouncerMessageInteractor {
    public final Flow bouncerMessage;
    public final BouncerMessageFactory factory;

    public BouncerMessageInteractor(BouncerMessageRepository bouncerMessageRepository, BouncerMessageFactory bouncerMessageFactory, UserRepository userRepository, CountDownTimerUtil countDownTimerUtil, FeatureFlags featureFlags) {
        this.factory = bouncerMessageFactory;
        Flags flags = Flags.INSTANCE;
        FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2 flowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2 = new FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2(new BouncerMessageModel(new Message("", null, null, null, false, 30, null), new Message("", null, null, null, false, 30, null)));
        BouncerMessageRepositoryImpl bouncerMessageRepositoryImpl = (BouncerMessageRepositoryImpl) bouncerMessageRepository;
        StateFlowImpl stateFlowImpl = bouncerMessageRepositoryImpl.primaryAuthMessage;
        Flow flow = bouncerMessageRepositoryImpl.biometricAuthMessage;
        StateFlowImpl stateFlowImpl2 = bouncerMessageRepositoryImpl.fingerprintAcquisitionMessage;
        StateFlowImpl stateFlowImpl3 = bouncerMessageRepositoryImpl.faceAcquisitionMessage;
        StateFlowImpl stateFlowImpl4 = bouncerMessageRepositoryImpl.customMessage;
        Flow flow2 = bouncerMessageRepositoryImpl.authFlagsMessage;
        FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 flowKt__ZipKt$combine$$inlined$unsafeFlow$1 = bouncerMessageRepositoryImpl.biometricLockedOutMessage;
        final FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 flowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 = ((UserRepositoryImpl) userRepository).selectedUserInfo;
        Iterator it = CollectionsKt__CollectionsKt.listOf(flowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2, stateFlowImpl, flow, stateFlowImpl2, stateFlowImpl3, stateFlowImpl4, flow2, flowKt__ZipKt$combine$$inlined$unsafeFlow$1, new Flow() { // from class: com.android.systemui.keyguard.bouncer.domain.interactor.BouncerMessageInteractor$special$$inlined$map$1

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.keyguard.bouncer.domain.interactor.BouncerMessageInteractor$special$$inlined$map$1$2, reason: invalid class name */
            /* loaded from: classes.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;
                public final /* synthetic */ BouncerMessageInteractor this$0;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.keyguard.bouncer.domain.interactor.BouncerMessageInteractor$special$$inlined$map$1$2", f = "BouncerMessageInteractor.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.keyguard.bouncer.domain.interactor.BouncerMessageInteractor$special$$inlined$map$1$2$1, reason: invalid class name */
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

                public AnonymousClass2(FlowCollector flowCollector, BouncerMessageInteractor bouncerMessageInteractor) {
                    this.$this_unsafeFlow = flowCollector;
                    this.this$0 = bouncerMessageInteractor;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(java.lang.Object r5, kotlin.coroutines.Continuation r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.android.systemui.keyguard.bouncer.domain.interactor.BouncerMessageInteractor$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.android.systemui.keyguard.bouncer.domain.interactor.BouncerMessageInteractor$special$$inlined$map$1$2$1 r0 = (com.android.systemui.keyguard.bouncer.domain.interactor.BouncerMessageInteractor$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.keyguard.bouncer.domain.interactor.BouncerMessageInteractor$special$$inlined$map$1$2$1 r0 = new com.android.systemui.keyguard.bouncer.domain.interactor.BouncerMessageInteractor$special$$inlined$map$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L2f
                        if (r2 != r3) goto L27
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L4b
                    L27:
                        java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                        java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                        r4.<init>(r5)
                        throw r4
                    L2f:
                        kotlin.ResultKt.throwOnFailure(r6)
                        android.content.pm.UserInfo r5 = (android.content.pm.UserInfo) r5
                        com.android.systemui.keyguard.bouncer.domain.interactor.BouncerMessageInteractor r6 = r4.this$0
                        com.android.systemui.keyguard.bouncer.data.factory.BouncerMessageFactory r6 = r6.factory
                        r2 = 14
                        int r5 = r5.id
                        com.android.systemui.keyguard.bouncer.shared.model.BouncerMessageModel r5 = r6.createFromPromptReason(r2, r5)
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                        java.lang.Object r4 = r4.emit(r5, r0)
                        if (r4 != r1) goto L4b
                        return r1
                    L4b:
                        kotlin.Unit r4 = kotlin.Unit.INSTANCE
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.bouncer.domain.interactor.BouncerMessageInteractor$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
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
        }).iterator();
        if (it.hasNext()) {
            Object next = it.next();
            while (it.hasNext()) {
                next = new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1((Flow) next, (Flow) it.next(), new BouncerMessageInteractor$firstNonNullMessage$1(null));
            }
            this.bouncerMessage = FlowKt.distinctUntilChanged((Flow) next);
            return;
        }
        throw new UnsupportedOperationException("Empty collection can't be reduced.");
    }
}
