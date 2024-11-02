package com.android.systemui.keyguard.bouncer.data.repository;

import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.common.coroutine.ConflatedCallbackFlow;
import com.android.systemui.keyguard.bouncer.data.factory.BouncerMessageFactory;
import com.android.systemui.keyguard.data.repository.BiometricSettingsRepository;
import com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl;
import com.android.systemui.keyguard.data.repository.DeviceEntryFingerprintAuthRepository;
import com.android.systemui.keyguard.data.repository.DeviceEntryFingerprintAuthRepositoryImpl;
import com.android.systemui.keyguard.data.repository.TrustRepository;
import com.android.systemui.keyguard.data.repository.TrustRepositoryImpl;
import com.android.systemui.user.data.repository.UserRepository;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BouncerMessageRepositoryImpl implements BouncerMessageRepository {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final StateFlowImpl _customMessage;
    public final StateFlowImpl _faceAcquisitionMessage;
    public final StateFlowImpl _fingerprintAcquisitionMessage;
    public final StateFlowImpl _primaryAuthMessage;
    public final BouncerMessageRepositoryImpl$special$$inlined$map$1 authFlagsBasedPromptReason;
    public final Flow authFlagsMessage;
    public final Flow biometricAuthMessage;
    public final FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 biometricLockedOutMessage;
    public final BouncerMessageFactory bouncerMessageFactory;
    public final StateFlowImpl customMessage;
    public final StateFlowImpl faceAcquisitionMessage;
    public final StateFlowImpl fingerprintAcquisitionMessage;
    public final FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 isAnyBiometricsEnabledAndEnrolled;
    public final FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 isFaceEnrolledAndEnabled;
    public final FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 isFingerprintEnrolledAndEnabled;
    public final StateFlowImpl primaryAuthMessage;
    public final UserRepository userRepository;

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

    /* JADX WARN: Type inference failed for: r6v3, types: [kotlinx.coroutines.flow.Flow, com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$1] */
    public BouncerMessageRepositoryImpl(TrustRepository trustRepository, BiometricSettingsRepository biometricSettingsRepository, KeyguardUpdateMonitor keyguardUpdateMonitor, BouncerMessageFactory bouncerMessageFactory, UserRepository userRepository, DeviceEntryFingerprintAuthRepository deviceEntryFingerprintAuthRepository) {
        this.bouncerMessageFactory = bouncerMessageFactory;
        this.userRepository = userRepository;
        BiometricSettingsRepositoryImpl biometricSettingsRepositoryImpl = (BiometricSettingsRepositoryImpl) biometricSettingsRepository;
        FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 flowKt__ZipKt$combine$$inlined$unsafeFlow$1 = new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(biometricSettingsRepositoryImpl.isFaceAuthenticationEnabled(), biometricSettingsRepositoryImpl.isFaceEnrolled, new BouncerMessageRepositoryKt$and$1(null));
        this.isFaceEnrolledAndEnabled = flowKt__ZipKt$combine$$inlined$unsafeFlow$1;
        FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 flowKt__ZipKt$combine$$inlined$unsafeFlow$12 = new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(biometricSettingsRepositoryImpl.isFingerprintEnabledByDevicePolicy, biometricSettingsRepositoryImpl.isFingerprintEnrolled, new BouncerMessageRepositoryKt$and$1(null));
        this.isFingerprintEnrolledAndEnabled = flowKt__ZipKt$combine$$inlined$unsafeFlow$12;
        FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 flowKt__ZipKt$combine$$inlined$unsafeFlow$13 = new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(flowKt__ZipKt$combine$$inlined$unsafeFlow$1, flowKt__ZipKt$combine$$inlined$unsafeFlow$12, new BouncerMessageRepositoryKt$or$1(null));
        this.isAnyBiometricsEnabledAndEnrolled = flowKt__ZipKt$combine$$inlined$unsafeFlow$13;
        final FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1 combine = FlowKt.combine(biometricSettingsRepositoryImpl.authenticationFlags, ((TrustRepositoryImpl) trustRepository).isCurrentUserTrustManaged(), flowKt__ZipKt$combine$$inlined$unsafeFlow$13, BouncerMessageRepositoryImpl$authFlagsBasedPromptReason$2.INSTANCE);
        final ?? r6 = new Flow() { // from class: com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$1

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$1$2, reason: invalid class name */
            /* loaded from: classes.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$1$2", f = "BouncerMessageRepository.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$1$2$1, reason: invalid class name */
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
                        boolean r0 = r9 instanceof com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r9
                        com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$1$2$1 r0 = (com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$1$2$1 r0 = new com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$1$2$1
                        r0.<init>(r9)
                    L18:
                        java.lang.Object r9 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L30
                        if (r2 != r3) goto L28
                        kotlin.ResultKt.throwOnFailure(r9)
                        goto La6
                    L28:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L30:
                        kotlin.ResultKt.throwOnFailure(r9)
                        kotlin.Triple r8 = (kotlin.Triple) r8
                        java.lang.Object r9 = r8.component1()
                        com.android.systemui.keyguard.shared.model.AuthenticationFlags r9 = (com.android.systemui.keyguard.shared.model.AuthenticationFlags) r9
                        java.lang.Object r2 = r8.component2()
                        java.lang.Boolean r2 = (java.lang.Boolean) r2
                        boolean r2 = r2.booleanValue()
                        java.lang.Object r8 = r8.component3()
                        java.lang.Boolean r8 = (java.lang.Boolean) r8
                        boolean r8 = r8.booleanValue()
                        r4 = 0
                        if (r2 != 0) goto L57
                        if (r8 == 0) goto L55
                        goto L57
                    L55:
                        r8 = r4
                        goto L58
                    L57:
                        r8 = r3
                    L58:
                        if (r8 == 0) goto L60
                        boolean r5 = r9.isPrimaryAuthRequiredAfterReboot
                        if (r5 == 0) goto L60
                        r4 = r3
                        goto L96
                    L60:
                        if (r8 == 0) goto L68
                        boolean r5 = r9.isPrimaryAuthRequiredAfterTimeout
                        if (r5 == 0) goto L68
                        r4 = 2
                        goto L96
                    L68:
                        boolean r5 = r9.isPrimaryAuthRequiredAfterDpmLockdown
                        if (r5 == 0) goto L6e
                        r4 = 3
                        goto L96
                    L6e:
                        r5 = 8
                        if (r2 == 0) goto L78
                        boolean r6 = r9.someAuthRequiredAfterUserRequest
                        if (r6 == 0) goto L78
                    L76:
                        r4 = r5
                        goto L96
                    L78:
                        if (r2 == 0) goto L7f
                        boolean r2 = r9.someAuthRequiredAfterTrustAgentExpired
                        if (r2 == 0) goto L7f
                        goto L76
                    L7f:
                        if (r8 == 0) goto L87
                        boolean r2 = r9.isInUserLockdown
                        if (r2 == 0) goto L87
                        r4 = 4
                        goto L96
                    L87:
                        if (r8 == 0) goto L8f
                        boolean r2 = r9.primaryAuthRequiredForUnattendedUpdate
                        if (r2 == 0) goto L8f
                        r4 = 6
                        goto L96
                    L8f:
                        if (r8 == 0) goto L96
                        boolean r8 = r9.strongerAuthRequiredAfterNonStrongBiometricsTimeout
                        if (r8 == 0) goto L96
                        r4 = 7
                    L96:
                        java.lang.Integer r8 = new java.lang.Integer
                        r8.<init>(r4)
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r7 = r7.$this_unsafeFlow
                        java.lang.Object r7 = r7.emit(r8, r0)
                        if (r7 != r1) goto La6
                        return r1
                    La6:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
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
        };
        this.authFlagsBasedPromptReason = r6;
        ConflatedCallbackFlow conflatedCallbackFlow = ConflatedCallbackFlow.INSTANCE;
        BouncerMessageRepositoryImpl$biometricAuthReason$1 bouncerMessageRepositoryImpl$biometricAuthReason$1 = new BouncerMessageRepositoryImpl$biometricAuthReason$1(keyguardUpdateMonitor, null);
        conflatedCallbackFlow.getClass();
        final Flow distinctUntilChanged = FlowKt.distinctUntilChanged(ConflatedCallbackFlow.conflatedCallbackFlow(bouncerMessageRepositoryImpl$biometricAuthReason$1));
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(null);
        this._primaryAuthMessage = MutableStateFlow;
        this.primaryAuthMessage = MutableStateFlow;
        StateFlowImpl MutableStateFlow2 = StateFlowKt.MutableStateFlow(null);
        this._faceAcquisitionMessage = MutableStateFlow2;
        this.faceAcquisitionMessage = MutableStateFlow2;
        StateFlowImpl MutableStateFlow3 = StateFlowKt.MutableStateFlow(null);
        this._fingerprintAcquisitionMessage = MutableStateFlow3;
        this.fingerprintAcquisitionMessage = MutableStateFlow3;
        StateFlowImpl MutableStateFlow4 = StateFlowKt.MutableStateFlow(null);
        this._customMessage = MutableStateFlow4;
        this.customMessage = MutableStateFlow4;
        this.biometricAuthMessage = FlowKt.distinctUntilChanged(new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(new BouncerMessageRepositoryImpl$biometricAuthMessage$2(null), new Flow() { // from class: com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$2

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$2$2, reason: invalid class name */
            /* loaded from: classes.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;
                public final /* synthetic */ BouncerMessageRepositoryImpl this$0;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$2$2", f = "BouncerMessageRepository.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$2$2$1, reason: invalid class name */
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

                public AnonymousClass2(FlowCollector flowCollector, BouncerMessageRepositoryImpl bouncerMessageRepositoryImpl) {
                    this.$this_unsafeFlow = flowCollector;
                    this.this$0 = bouncerMessageRepositoryImpl;
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
                        boolean r0 = r6 instanceof com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$2.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$2$2$1 r0 = (com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$2.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$2$2$1 r0 = new com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$2$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L2f
                        if (r2 != r3) goto L27
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L59
                    L27:
                        java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                        java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                        r4.<init>(r5)
                        throw r4
                    L2f:
                        kotlin.ResultKt.throwOnFailure(r6)
                        java.lang.Number r5 = (java.lang.Number) r5
                        int r5 = r5.intValue()
                        if (r5 != 0) goto L3c
                        r5 = 0
                        goto L4e
                    L3c:
                        com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl r6 = r4.this$0
                        com.android.systemui.keyguard.bouncer.data.factory.BouncerMessageFactory r2 = r6.bouncerMessageFactory
                        com.android.systemui.user.data.repository.UserRepository r6 = r6.userRepository
                        com.android.systemui.user.data.repository.UserRepositoryImpl r6 = (com.android.systemui.user.data.repository.UserRepositoryImpl) r6
                        android.content.pm.UserInfo r6 = r6.getSelectedUserInfo()
                        int r6 = r6.id
                        com.android.systemui.keyguard.bouncer.shared.model.BouncerMessageModel r5 = r2.createFromPromptReason(r5, r6)
                    L4e:
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                        java.lang.Object r4 = r4.emit(r5, r0)
                        if (r4 != r1) goto L59
                        return r1
                    L59:
                        kotlin.Unit r4 = kotlin.Unit.INSTANCE
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$2.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
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
        }));
        this.authFlagsMessage = FlowKt.distinctUntilChanged(new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(new BouncerMessageRepositoryImpl$authFlagsMessage$2(null), new Flow() { // from class: com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$3

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$3$2, reason: invalid class name */
            /* loaded from: classes.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;
                public final /* synthetic */ BouncerMessageRepositoryImpl this$0;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$3$2", f = "BouncerMessageRepository.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$3$2$1, reason: invalid class name */
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

                public AnonymousClass2(FlowCollector flowCollector, BouncerMessageRepositoryImpl bouncerMessageRepositoryImpl) {
                    this.$this_unsafeFlow = flowCollector;
                    this.this$0 = bouncerMessageRepositoryImpl;
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
                        boolean r0 = r6 instanceof com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$3.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$3$2$1 r0 = (com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$3.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$3$2$1 r0 = new com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$3$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L2f
                        if (r2 != r3) goto L27
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L59
                    L27:
                        java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                        java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                        r4.<init>(r5)
                        throw r4
                    L2f:
                        kotlin.ResultKt.throwOnFailure(r6)
                        java.lang.Number r5 = (java.lang.Number) r5
                        int r5 = r5.intValue()
                        if (r5 != 0) goto L3c
                        r5 = 0
                        goto L4e
                    L3c:
                        com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl r6 = r4.this$0
                        com.android.systemui.keyguard.bouncer.data.factory.BouncerMessageFactory r2 = r6.bouncerMessageFactory
                        com.android.systemui.user.data.repository.UserRepository r6 = r6.userRepository
                        com.android.systemui.user.data.repository.UserRepositoryImpl r6 = (com.android.systemui.user.data.repository.UserRepositoryImpl) r6
                        android.content.pm.UserInfo r6 = r6.getSelectedUserInfo()
                        int r6 = r6.id
                        com.android.systemui.keyguard.bouncer.shared.model.BouncerMessageModel r5 = r2.createFromPromptReason(r5, r6)
                    L4e:
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                        java.lang.Object r4 = r4.emit(r5, r0)
                        if (r4 != r1) goto L59
                        return r1
                    L59:
                        kotlin.Unit r4 = kotlin.Unit.INSTANCE
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$special$$inlined$map$3.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
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
        }));
        this.biometricLockedOutMessage = new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(((DeviceEntryFingerprintAuthRepositoryImpl) deviceEntryFingerprintAuthRepository).isLockedOut, ConflatedCallbackFlow.conflatedCallbackFlow(new BouncerMessageRepositoryImpl$faceLockedOut$1(keyguardUpdateMonitor, null)), new BouncerMessageRepositoryImpl$biometricLockedOutMessage$1(this, null));
    }
}
