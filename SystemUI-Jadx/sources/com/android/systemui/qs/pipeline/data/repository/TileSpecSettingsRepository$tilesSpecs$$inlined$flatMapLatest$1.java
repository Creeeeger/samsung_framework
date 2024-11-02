package com.android.systemui.qs.pipeline.data.repository;

import com.android.systemui.common.coroutine.ConflatedCallbackFlow;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;
import kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.qs.pipeline.data.repository.TileSpecSettingsRepository$tilesSpecs$$inlined$flatMapLatest$1", f = "TileSpecRepository.kt", l = {190}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class TileSpecSettingsRepository$tilesSpecs$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3 {
    final /* synthetic */ int $userId$inlined;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;
    final /* synthetic */ TileSpecSettingsRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TileSpecSettingsRepository$tilesSpecs$$inlined$flatMapLatest$1(Continuation continuation, TileSpecSettingsRepository tileSpecSettingsRepository, int i) {
        super(3, continuation);
        this.this$0 = tileSpecSettingsRepository;
        this.$userId$inlined = i;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        TileSpecSettingsRepository$tilesSpecs$$inlined$flatMapLatest$1 tileSpecSettingsRepository$tilesSpecs$$inlined$flatMapLatest$1 = new TileSpecSettingsRepository$tilesSpecs$$inlined$flatMapLatest$1((Continuation) obj3, this.this$0, this.$userId$inlined);
        tileSpecSettingsRepository$tilesSpecs$$inlined$flatMapLatest$1.L$0 = (FlowCollector) obj;
        tileSpecSettingsRepository$tilesSpecs$$inlined$flatMapLatest$1.L$1 = obj2;
        return tileSpecSettingsRepository$tilesSpecs$$inlined$flatMapLatest$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Flow flowOn;
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
            FlowCollector flowCollector = (FlowCollector) this.L$0;
            if (((Boolean) this.L$1).booleanValue()) {
                this.this$0.logger.logUsingRetailTiles();
                flowOn = new FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2((List) this.this$0.retailModeTiles$delegate.getValue());
            } else {
                final TileSpecSettingsRepository tileSpecSettingsRepository = this.this$0;
                final int i2 = this.$userId$inlined;
                int i3 = TileSpecSettingsRepository.$r8$clinit;
                tileSpecSettingsRepository.getClass();
                ConflatedCallbackFlow conflatedCallbackFlow = ConflatedCallbackFlow.INSTANCE;
                TileSpecSettingsRepository$settingsTiles$1 tileSpecSettingsRepository$settingsTiles$1 = new TileSpecSettingsRepository$settingsTiles$1(tileSpecSettingsRepository, i2, null);
                conflatedCallbackFlow.getClass();
                final FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 = new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(new TileSpecSettingsRepository$settingsTiles$2(null), ConflatedCallbackFlow.conflatedCallbackFlow(tileSpecSettingsRepository$settingsTiles$1));
                final FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1 flowKt__TransformKt$onEach$$inlined$unsafeTransform$1 = new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(FlowKt.distinctUntilChanged(new Flow() { // from class: com.android.systemui.qs.pipeline.data.repository.TileSpecSettingsRepository$settingsTiles$$inlined$map$1

                    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                    /* renamed from: com.android.systemui.qs.pipeline.data.repository.TileSpecSettingsRepository$settingsTiles$$inlined$map$1$2, reason: invalid class name */
                    /* loaded from: classes2.dex */
                    public final class AnonymousClass2 implements FlowCollector {
                        public final /* synthetic */ FlowCollector $this_unsafeFlow;
                        public final /* synthetic */ int $userId$inlined;
                        public final /* synthetic */ TileSpecSettingsRepository this$0;

                        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                        @DebugMetadata(c = "com.android.systemui.qs.pipeline.data.repository.TileSpecSettingsRepository$settingsTiles$$inlined$map$1$2", f = "TileSpecRepository.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                        /* renamed from: com.android.systemui.qs.pipeline.data.repository.TileSpecSettingsRepository$settingsTiles$$inlined$map$1$2$1, reason: invalid class name */
                        /* loaded from: classes2.dex */
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

                        public AnonymousClass2(FlowCollector flowCollector, TileSpecSettingsRepository tileSpecSettingsRepository, int i) {
                            this.$this_unsafeFlow = flowCollector;
                            this.this$0 = tileSpecSettingsRepository;
                            this.$userId$inlined = i;
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
                                boolean r0 = r6 instanceof com.android.systemui.qs.pipeline.data.repository.TileSpecSettingsRepository$settingsTiles$$inlined$map$1.AnonymousClass2.AnonymousClass1
                                if (r0 == 0) goto L13
                                r0 = r6
                                com.android.systemui.qs.pipeline.data.repository.TileSpecSettingsRepository$settingsTiles$$inlined$map$1$2$1 r0 = (com.android.systemui.qs.pipeline.data.repository.TileSpecSettingsRepository$settingsTiles$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                                int r1 = r0.label
                                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                                r3 = r1 & r2
                                if (r3 == 0) goto L13
                                int r1 = r1 - r2
                                r0.label = r1
                                goto L18
                            L13:
                                com.android.systemui.qs.pipeline.data.repository.TileSpecSettingsRepository$settingsTiles$$inlined$map$1$2$1 r0 = new com.android.systemui.qs.pipeline.data.repository.TileSpecSettingsRepository$settingsTiles$$inlined$map$1$2$1
                                r0.<init>(r6)
                            L18:
                                java.lang.Object r6 = r0.result
                                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                                int r2 = r0.label
                                r3 = 1
                                if (r2 == 0) goto L2f
                                if (r2 != r3) goto L27
                                kotlin.ResultKt.throwOnFailure(r6)
                                goto L52
                            L27:
                                java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                                r4.<init>(r5)
                                throw r4
                            L2f:
                                kotlin.ResultKt.throwOnFailure(r6)
                                kotlin.Unit r5 = (kotlin.Unit) r5
                                com.android.systemui.qs.pipeline.data.repository.TileSpecSettingsRepository r5 = r4.this$0
                                com.android.systemui.util.settings.SecureSettings r5 = r5.secureSettings
                                int r6 = r4.$userId$inlined
                                com.android.systemui.util.settings.SecureSettingsImpl r5 = (com.android.systemui.util.settings.SecureSettingsImpl) r5
                                java.lang.String r2 = "sysui_qs_tiles"
                                java.lang.String r5 = r5.getStringForUser(r6, r2)
                                if (r5 != 0) goto L47
                                java.lang.String r5 = ""
                            L47:
                                r0.label = r3
                                kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                                java.lang.Object r4 = r4.emit(r5, r0)
                                if (r4 != r1) goto L52
                                return r1
                            L52:
                                kotlin.Unit r4 = kotlin.Unit.INSTANCE
                                return r4
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.pipeline.data.repository.TileSpecSettingsRepository$settingsTiles$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                        }
                    }

                    @Override // kotlinx.coroutines.flow.Flow
                    public final Object collect(FlowCollector flowCollector2, Continuation continuation) {
                        Object collect = Flow.this.collect(new AnonymousClass2(flowCollector2, tileSpecSettingsRepository, i2), continuation);
                        if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
                            return collect;
                        }
                        return Unit.INSTANCE;
                    }
                }), new TileSpecSettingsRepository$settingsTiles$4(tileSpecSettingsRepository, i2, null));
                flowOn = FlowKt.flowOn(new Flow() { // from class: com.android.systemui.qs.pipeline.data.repository.TileSpecSettingsRepository$settingsTiles$$inlined$map$2

                    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                    /* renamed from: com.android.systemui.qs.pipeline.data.repository.TileSpecSettingsRepository$settingsTiles$$inlined$map$2$2, reason: invalid class name */
                    /* loaded from: classes2.dex */
                    public final class AnonymousClass2 implements FlowCollector {
                        public final /* synthetic */ FlowCollector $this_unsafeFlow;
                        public final /* synthetic */ int $userId$inlined;
                        public final /* synthetic */ TileSpecSettingsRepository this$0;

                        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                        @DebugMetadata(c = "com.android.systemui.qs.pipeline.data.repository.TileSpecSettingsRepository$settingsTiles$$inlined$map$2$2", f = "TileSpecRepository.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                        /* renamed from: com.android.systemui.qs.pipeline.data.repository.TileSpecSettingsRepository$settingsTiles$$inlined$map$2$2$1, reason: invalid class name */
                        /* loaded from: classes2.dex */
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

                        public AnonymousClass2(FlowCollector flowCollector, TileSpecSettingsRepository tileSpecSettingsRepository, int i) {
                            this.$this_unsafeFlow = flowCollector;
                            this.this$0 = tileSpecSettingsRepository;
                            this.$userId$inlined = i;
                        }

                        /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
                        /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct code enable 'Show inconsistent code' option in preferences
                        */
                        public final java.lang.Object emit(java.lang.Object r10, kotlin.coroutines.Continuation r11) {
                            /*
                                Method dump skipped, instructions count: 260
                                To view this dump change 'Code comments level' option to 'DEBUG'
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.pipeline.data.repository.TileSpecSettingsRepository$settingsTiles$$inlined$map$2.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                        }
                    }

                    @Override // kotlinx.coroutines.flow.Flow
                    public final Object collect(FlowCollector flowCollector2, Continuation continuation) {
                        Object collect = Flow.this.collect(new AnonymousClass2(flowCollector2, tileSpecSettingsRepository, i2), continuation);
                        if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
                            return collect;
                        }
                        return Unit.INSTANCE;
                    }
                }, tileSpecSettingsRepository.backgroundDispatcher);
            }
            this.label = 1;
            if (FlowKt.emitAll(this, flowOn, flowCollector) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
