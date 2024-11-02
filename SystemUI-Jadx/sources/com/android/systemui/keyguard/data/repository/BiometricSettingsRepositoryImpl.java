package com.android.systemui.keyguard.data.repository;

import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.IntentFilter;
import android.hardware.biometrics.BiometricManager;
import android.os.UserHandle;
import android.util.Log;
import com.android.internal.widget.LockPatternUtils;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.R;
import com.android.systemui.biometrics.AuthController;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.common.coroutine.ConflatedCallbackFlow;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.keyguard.shared.model.DevicePosture;
import com.android.systemui.user.data.repository.UserRepository;
import com.android.systemui.user.data.repository.UserRepositoryImpl;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;
import kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;
import kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StartedEagerly;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BiometricSettingsRepositoryImpl implements BiometricSettingsRepository, Dumpable {
    public final ChannelFlowTransformLatest authenticationFlags;
    public final Map biometricsEnabledForUser = new LinkedHashMap();
    public final Flow devicePolicyChangedForAllUsers;
    public final BiometricSettingsRepositoryImpl$special$$inlined$map$1 isCurrentUserInLockdown;
    public final FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1 isFaceAuthSupportedInCurrentPosture;
    public final ReadonlyStateFlow isFaceEnabledByBiometricsManager;
    public final ChannelFlowTransformLatest isFaceEnabledByBiometricsManagerForCurrentUser;
    public final Flow isFaceEnabledByDevicePolicy;
    public final ChannelFlowTransformLatest isFaceEnrolled;
    public final ReadonlyStateFlow isFingerprintEnabledByDevicePolicy;
    public final ReadonlyStateFlow isFingerprintEnrolled;
    public final ReadonlyStateFlow isNonStrongBiometricAllowed;
    public final ReadonlyStateFlow isStrongBiometricAllowed;
    public final UserRepository userRepository;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$2", f = "BiometricSettingsRepository.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2 {
        /* synthetic */ boolean Z$0;
        int label;

        public AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.Z$0 = ((Boolean) obj).booleanValue();
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create(Boolean.valueOf(((Boolean) obj).booleanValue()), (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("isFaceAuthSupportedInCurrentPosture value changed to: ", this.Z$0, "BiometricsRepositoryImpl");
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Type inference failed for: r9v0, types: [com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$1] */
    public BiometricSettingsRepositoryImpl(Context context, LockPatternUtils lockPatternUtils, BroadcastDispatcher broadcastDispatcher, AuthController authController, UserRepository userRepository, DevicePolicyManager devicePolicyManager, CoroutineScope coroutineScope, CoroutineDispatcher coroutineDispatcher, BiometricManager biometricManager, DevicePostureRepository devicePostureRepository, DumpManager dumpManager) {
        Flow flow;
        this.userRepository = userRepository;
        StrongAuthTracker strongAuthTracker = new StrongAuthTracker(userRepository, context);
        final ChannelFlowTransformLatest channelFlowTransformLatest = strongAuthTracker.currentUserAuthFlags;
        this.isCurrentUserInLockdown = new Flow() { // from class: com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$1

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$1$2, reason: invalid class name */
            /* loaded from: classes.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$1$2", f = "BiometricSettingsRepository.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$1$2$1, reason: invalid class name */
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
                        boolean r0 = r6 instanceof com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$1$2$1 r0 = (com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$1$2$1 r0 = new com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L2f
                        if (r2 != r3) goto L27
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L45
                    L27:
                        java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                        java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                        r4.<init>(r5)
                        throw r4
                    L2f:
                        kotlin.ResultKt.throwOnFailure(r6)
                        com.android.systemui.keyguard.shared.model.AuthenticationFlags r5 = (com.android.systemui.keyguard.shared.model.AuthenticationFlags) r5
                        boolean r5 = r5.isInUserLockdown
                        java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                        java.lang.Object r4 = r4.emit(r5, r0)
                        if (r4 != r1) goto L45
                        return r1
                    L45:
                        kotlin.Unit r4 = kotlin.Unit.INSTANCE
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
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
        this.authenticationFlags = strongAuthTracker.currentUserAuthFlags;
        Log.d("BiometricsRepositoryImpl", "Registering StrongAuthTracker");
        lockPatternUtils.registerStrongAuthTracker(strongAuthTracker);
        dumpManager.registerDumpable(this);
        DevicePosture.Companion companion = DevicePosture.Companion;
        int integer = context.getResources().getInteger(R.integer.config_face_auth_supported_posture);
        companion.getClass();
        final DevicePosture posture = DevicePosture.Companion.toPosture(integer);
        if (posture == DevicePosture.UNKNOWN) {
            flow = new FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2(Boolean.TRUE);
        } else {
            ConflatedCallbackFlow conflatedCallbackFlow = ConflatedCallbackFlow.INSTANCE;
            DevicePostureRepositoryImpl$currentDevicePosture$1 devicePostureRepositoryImpl$currentDevicePosture$1 = new DevicePostureRepositoryImpl$currentDevicePosture$1((DevicePostureRepositoryImpl) devicePostureRepository, null);
            conflatedCallbackFlow.getClass();
            final Flow conflatedCallbackFlow2 = ConflatedCallbackFlow.conflatedCallbackFlow(devicePostureRepositoryImpl$currentDevicePosture$1);
            flow = new Flow() { // from class: com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$2

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                /* renamed from: com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$2$2, reason: invalid class name */
                /* loaded from: classes.dex */
                public final class AnonymousClass2 implements FlowCollector {
                    public final /* synthetic */ DevicePosture $configFaceAuthSupportedPosture$inlined;
                    public final /* synthetic */ FlowCollector $this_unsafeFlow;

                    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                    @DebugMetadata(c = "com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$2$2", f = "BiometricSettingsRepository.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                    /* renamed from: com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$2$2$1, reason: invalid class name */
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

                    public AnonymousClass2(FlowCollector flowCollector, DevicePosture devicePosture) {
                        this.$this_unsafeFlow = flowCollector;
                        this.$configFaceAuthSupportedPosture$inlined = devicePosture;
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
                            boolean r0 = r6 instanceof com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$2.AnonymousClass2.AnonymousClass1
                            if (r0 == 0) goto L13
                            r0 = r6
                            com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$2$2$1 r0 = (com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$2.AnonymousClass2.AnonymousClass1) r0
                            int r1 = r0.label
                            r2 = -2147483648(0xffffffff80000000, float:-0.0)
                            r3 = r1 & r2
                            if (r3 == 0) goto L13
                            int r1 = r1 - r2
                            r0.label = r1
                            goto L18
                        L13:
                            com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$2$2$1 r0 = new com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$2$2$1
                            r0.<init>(r6)
                        L18:
                            java.lang.Object r6 = r0.result
                            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                            int r2 = r0.label
                            r3 = 1
                            if (r2 == 0) goto L2f
                            if (r2 != r3) goto L27
                            kotlin.ResultKt.throwOnFailure(r6)
                            goto L4a
                        L27:
                            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                            r4.<init>(r5)
                            throw r4
                        L2f:
                            kotlin.ResultKt.throwOnFailure(r6)
                            com.android.systemui.keyguard.shared.model.DevicePosture r5 = (com.android.systemui.keyguard.shared.model.DevicePosture) r5
                            com.android.systemui.keyguard.shared.model.DevicePosture r6 = r4.$configFaceAuthSupportedPosture$inlined
                            if (r5 != r6) goto L3a
                            r5 = r3
                            goto L3b
                        L3a:
                            r5 = 0
                        L3b:
                            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
                            r0.label = r3
                            kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                            java.lang.Object r4 = r4.emit(r5, r0)
                            if (r4 != r1) goto L4a
                            return r1
                        L4a:
                            kotlin.Unit r4 = kotlin.Unit.INSTANCE
                            return r4
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$2.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                    Object collect = Flow.this.collect(new AnonymousClass2(flowCollector, posture), continuation);
                    if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
                        return collect;
                    }
                    return Unit.INSTANCE;
                }
            };
        }
        this.isFaceAuthSupportedInCurrentPosture = new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(flow, new AnonymousClass2(null));
        UserRepositoryImpl userRepositoryImpl = (UserRepositoryImpl) userRepository;
        final FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 flowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 = userRepositoryImpl.selectedUserInfo;
        Flow distinctUntilChanged = FlowKt.distinctUntilChanged(new Flow() { // from class: com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$3

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$3$2, reason: invalid class name */
            /* loaded from: classes.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$3$2", f = "BiometricSettingsRepository.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$3$2$1, reason: invalid class name */
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
                        boolean r0 = r6 instanceof com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$3.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$3$2$1 r0 = (com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$3.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$3$2$1 r0 = new com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$3$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L2f
                        if (r2 != r3) goto L27
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L46
                    L27:
                        java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                        java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                        r4.<init>(r5)
                        throw r4
                    L2f:
                        kotlin.ResultKt.throwOnFailure(r6)
                        android.content.pm.UserInfo r5 = (android.content.pm.UserInfo) r5
                        int r5 = r5.id
                        java.lang.Integer r6 = new java.lang.Integer
                        r6.<init>(r5)
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                        java.lang.Object r4 = r4.emit(r6, r0)
                        if (r4 != r1) goto L46
                        return r1
                    L46:
                        kotlin.Unit r4 = kotlin.Unit.INSTANCE
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$special$$inlined$map$3.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
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
        Flow broadcastFlow$default = BroadcastDispatcher.broadcastFlow$default(broadcastDispatcher, new IntentFilter("android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"), UserHandle.ALL, 0, null, 12);
        this.devicePolicyChangedForAllUsers = broadcastFlow$default;
        ChannelFlowTransformLatest transformLatest = FlowKt.transformLatest(distinctUntilChanged, new BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$1(null, authController));
        SharingStarted.Companion.getClass();
        StartedEagerly startedEagerly = SharingStarted.Companion.Eagerly;
        Integer valueOf = Integer.valueOf(userRepositoryImpl.getSelectedUserInfo().id);
        Boolean bool = Boolean.FALSE;
        this.isFingerprintEnrolled = FlowKt.stateIn(transformLatest, coroutineScope, startedEagerly, Boolean.valueOf(((Boolean) ((HashMap) authController.mFpEnrolledForUser).getOrDefault(valueOf, bool)).booleanValue()));
        this.isFaceEnrolled = FlowKt.transformLatest(distinctUntilChanged, new BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$2(null, authController));
        this.isFaceEnabledByBiometricsManagerForCurrentUser = FlowKt.transformLatest(userRepositoryImpl.selectedUserInfo, new BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$3(null, this));
        this.isFaceEnabledByDevicePolicy = FlowKt.distinctUntilChanged(FlowKt.flowOn(new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(new BiometricSettingsRepositoryImpl$isFaceEnabledByDevicePolicy$2(devicePolicyManager, this, null), new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(distinctUntilChanged, broadcastFlow$default, new BiometricSettingsRepositoryImpl$isFaceEnabledByDevicePolicy$1(devicePolicyManager, null))), coroutineDispatcher));
        ConflatedCallbackFlow conflatedCallbackFlow3 = ConflatedCallbackFlow.INSTANCE;
        BiometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$1 biometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$1 = new BiometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$1(biometricManager, null);
        conflatedCallbackFlow3.getClass();
        this.isFaceEnabledByBiometricsManager = FlowKt.stateIn(new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(ConflatedCallbackFlow.conflatedCallbackFlow(biometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$1), new BiometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$2(this, null)), coroutineScope, startedEagerly, new Pair(0, bool));
        this.isStrongBiometricAllowed = FlowKt.stateIn(strongAuthTracker.isStrongBiometricAllowed, coroutineScope, startedEagerly, Boolean.valueOf(strongAuthTracker.isBiometricAllowedForUser(true, userRepositoryImpl.getSelectedUserInfo().id)));
        this.isNonStrongBiometricAllowed = FlowKt.stateIn(strongAuthTracker.isNonStrongBiometricAllowed, coroutineScope, startedEagerly, Boolean.valueOf(strongAuthTracker.isBiometricAllowedForUser(false, userRepositoryImpl.getSelectedUserInfo().id)));
        this.isFingerprintEnabledByDevicePolicy = FlowKt.stateIn(FlowKt.transformLatest(distinctUntilChanged, new BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$4(null, this, coroutineDispatcher, devicePolicyManager)), coroutineScope, startedEagerly, Boolean.valueOf((devicePolicyManager.getKeyguardDisabledFeatures(null, userRepositoryImpl.getSelectedUserInfo().id) & 32) == 0));
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("isFingerprintEnrolled=" + this.isFingerprintEnrolled.getValue());
        printWriter.println("isStrongBiometricAllowed=" + this.isStrongBiometricAllowed.getValue());
        printWriter.println("isFingerprintEnabledByDevicePolicy=" + this.isFingerprintEnabledByDevicePolicy.getValue());
    }

    public final FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 isFaceAuthenticationEnabled() {
        BiometricSettingsRepositoryImpl$isFaceAuthenticationEnabled$1 biometricSettingsRepositoryImpl$isFaceAuthenticationEnabled$1 = new BiometricSettingsRepositoryImpl$isFaceAuthenticationEnabled$1(null);
        return new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(this.isFaceEnabledByBiometricsManagerForCurrentUser, this.isFaceEnabledByDevicePolicy, biometricSettingsRepositoryImpl$isFaceAuthenticationEnabled$1);
    }
}
