package com.android.systemui.multishade.domain.interactor;

import com.android.systemui.multishade.data.remoteproxy.MultiShadeInputProxy;
import com.android.systemui.multishade.data.repository.MultiShadeRepository;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MultiShadeInteractor {
    public final MultiShadeInputProxy inputProxy;
    public final Flow isAnyShadeExpanded;
    public final ChannelFlowTransformLatest maxShadeExpansion;
    public final ReadonlySharedFlow processedProxiedInput;
    public final MultiShadeRepository repository;
    public final ReadonlyStateFlow shadeConfig;

    public MultiShadeInteractor(CoroutineScope coroutineScope, MultiShadeRepository multiShadeRepository, MultiShadeInputProxy multiShadeInputProxy) {
        this.repository = multiShadeRepository;
        this.inputProxy = multiShadeInputProxy;
        ReadonlyStateFlow readonlyStateFlow = multiShadeRepository.shadeConfig;
        this.shadeConfig = readonlyStateFlow;
        final ChannelFlowTransformLatest transformLatest = FlowKt.transformLatest(readonlyStateFlow, new MultiShadeInteractor$special$$inlined$flatMapLatest$1(null, this));
        this.maxShadeExpansion = transformLatest;
        this.isAnyShadeExpanded = FlowKt.distinctUntilChanged(new Flow() { // from class: com.android.systemui.multishade.domain.interactor.MultiShadeInteractor$special$$inlined$map$1

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.multishade.domain.interactor.MultiShadeInteractor$special$$inlined$map$1$2, reason: invalid class name */
            /* loaded from: classes.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.multishade.domain.interactor.MultiShadeInteractor$special$$inlined$map$1$2", f = "MultiShadeInteractor.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.multishade.domain.interactor.MultiShadeInteractor$special$$inlined$map$1$2$1, reason: invalid class name */
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

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
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
                        boolean r0 = r6 instanceof com.android.systemui.multishade.domain.interactor.MultiShadeInteractor$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.android.systemui.multishade.domain.interactor.MultiShadeInteractor$special$$inlined$map$1$2$1 r0 = (com.android.systemui.multishade.domain.interactor.MultiShadeInteractor$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.multishade.domain.interactor.MultiShadeInteractor$special$$inlined$map$1$2$1 r0 = new com.android.systemui.multishade.domain.interactor.MultiShadeInteractor$special$$inlined$map$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L2f
                        if (r2 != r3) goto L27
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L56
                    L27:
                        java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                        java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                        r4.<init>(r5)
                        throw r4
                    L2f:
                        kotlin.ResultKt.throwOnFailure(r6)
                        java.lang.Number r5 = (java.lang.Number) r5
                        float r5 = r5.floatValue()
                        r6 = 953267991(0x38d1b717, float:1.0E-4)
                        float r5 = java.lang.Math.abs(r5)
                        int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
                        if (r5 >= 0) goto L45
                        r5 = r3
                        goto L46
                    L45:
                        r5 = 0
                    L46:
                        r5 = r5 ^ r3
                        java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                        java.lang.Object r4 = r4.emit(r5, r0)
                        if (r4 != r1) goto L56
                        return r1
                    L56:
                        kotlin.Unit r4 = kotlin.Unit.INSTANCE
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.multishade.domain.interactor.MultiShadeInteractor$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                Object collect = Flow.this.collect(new AnonymousClass2(flowCollector), continuation);
                if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return collect;
                }
                return Unit.INSTANCE;
            }
        });
        final FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 flowKt__ZipKt$combine$$inlined$unsafeFlow$1 = new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(readonlyStateFlow, FlowKt.distinctUntilChanged(multiShadeRepository.proxiedInput), MultiShadeInteractor$processedProxiedInput$2.INSTANCE);
        Flow flow = new Flow() { // from class: com.android.systemui.multishade.domain.interactor.MultiShadeInteractor$special$$inlined$map$2

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.multishade.domain.interactor.MultiShadeInteractor$special$$inlined$map$2$2, reason: invalid class name */
            /* loaded from: classes.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;
                public final /* synthetic */ MultiShadeInteractor this$0;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.multishade.domain.interactor.MultiShadeInteractor$special$$inlined$map$2$2", f = "MultiShadeInteractor.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.multishade.domain.interactor.MultiShadeInteractor$special$$inlined$map$2$2$1, reason: invalid class name */
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

                public AnonymousClass2(FlowCollector flowCollector, MultiShadeInteractor multiShadeInteractor) {
                    this.$this_unsafeFlow = flowCollector;
                    this.this$0 = multiShadeInteractor;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(java.lang.Object r8, kotlin.coroutines.Continuation r9) {
                    /*
                        r7 = this;
                        boolean r0 = r9 instanceof com.android.systemui.multishade.domain.interactor.MultiShadeInteractor$special$$inlined$map$2.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r9
                        com.android.systemui.multishade.domain.interactor.MultiShadeInteractor$special$$inlined$map$2$2$1 r0 = (com.android.systemui.multishade.domain.interactor.MultiShadeInteractor$special$$inlined$map$2.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.multishade.domain.interactor.MultiShadeInteractor$special$$inlined$map$2$2$1 r0 = new com.android.systemui.multishade.domain.interactor.MultiShadeInteractor$special$$inlined$map$2$2$1
                        r0.<init>(r9)
                    L18:
                        java.lang.Object r9 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L30
                        if (r2 != r3) goto L28
                        kotlin.ResultKt.throwOnFailure(r9)
                        goto L9c
                    L28:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L30:
                        kotlin.ResultKt.throwOnFailure(r9)
                        kotlin.Pair r8 = (kotlin.Pair) r8
                        java.lang.Object r9 = r8.component1()
                        com.android.systemui.multishade.shared.model.ShadeConfig r9 = (com.android.systemui.multishade.shared.model.ShadeConfig) r9
                        java.lang.Object r8 = r8.component2()
                        com.android.systemui.multishade.shared.model.ProxiedInputModel r8 = (com.android.systemui.multishade.shared.model.ProxiedInputModel) r8
                        boolean r2 = r8 instanceof com.android.systemui.multishade.shared.model.ProxiedInputModel.OnTap
                        com.android.systemui.multishade.domain.interactor.MultiShadeInteractor r4 = r7.this$0
                        if (r2 != 0) goto L50
                        com.android.systemui.multishade.data.repository.MultiShadeRepository r5 = r4.repository
                        kotlinx.coroutines.flow.StateFlowImpl r5 = r5._forceCollapseAll
                        java.lang.Boolean r6 = java.lang.Boolean.FALSE
                        r5.setValue(r6)
                    L50:
                        boolean r5 = r8 instanceof com.android.systemui.multishade.shared.model.ProxiedInputModel.OnDrag
                        if (r5 == 0) goto L86
                        r2 = r8
                        com.android.systemui.multishade.shared.model.ProxiedInputModel$OnDrag r2 = (com.android.systemui.multishade.shared.model.ProxiedInputModel.OnDrag) r2
                        float r2 = r2.xFraction
                        r4.getClass()
                        boolean r5 = r9 instanceof com.android.systemui.multishade.shared.model.ShadeConfig.DualShadeConfig
                        if (r5 == 0) goto L6e
                        com.android.systemui.multishade.shared.model.ShadeConfig$DualShadeConfig r9 = (com.android.systemui.multishade.shared.model.ShadeConfig.DualShadeConfig) r9
                        float r9 = r9.splitFraction
                        int r9 = (r2 > r9 ? 1 : (r2 == r9 ? 0 : -1))
                        if (r9 > 0) goto L6b
                        com.android.systemui.multishade.shared.model.ShadeId r9 = com.android.systemui.multishade.shared.model.ShadeId.LEFT
                        goto L70
                    L6b:
                        com.android.systemui.multishade.shared.model.ShadeId r9 = com.android.systemui.multishade.shared.model.ShadeId.RIGHT
                        goto L70
                    L6e:
                        com.android.systemui.multishade.shared.model.ShadeId r9 = com.android.systemui.multishade.shared.model.ShadeId.SINGLE
                    L70:
                        com.android.systemui.multishade.data.repository.MultiShadeRepository r2 = r4.repository
                        kotlinx.coroutines.flow.ReadonlyStateFlow r4 = r2.shadeInteraction
                        java.lang.Object r4 = r4.getValue()
                        if (r4 == 0) goto L7b
                        goto L91
                    L7b:
                        com.android.systemui.multishade.data.model.MultiShadeInteractionModel r4 = new com.android.systemui.multishade.data.model.MultiShadeInteractionModel
                        r4.<init>(r9, r3)
                        kotlinx.coroutines.flow.StateFlowImpl r9 = r2._shadeInteraction
                        r9.setValue(r4)
                        goto L91
                    L86:
                        if (r2 == 0) goto L91
                        com.android.systemui.multishade.data.repository.MultiShadeRepository r9 = r4.repository
                        kotlinx.coroutines.flow.StateFlowImpl r9 = r9._forceCollapseAll
                        java.lang.Boolean r2 = java.lang.Boolean.TRUE
                        r9.setValue(r2)
                    L91:
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r7 = r7.$this_unsafeFlow
                        java.lang.Object r7 = r7.emit(r8, r0)
                        if (r7 != r1) goto L9c
                        return r1
                    L9c:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.multishade.domain.interactor.MultiShadeInteractor$special$$inlined$map$2.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
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
        SharingStarted.Companion.getClass();
        this.processedProxiedInput = FlowKt.shareIn(flow, coroutineScope, SharingStarted.Companion.Eagerly, 1);
    }
}
