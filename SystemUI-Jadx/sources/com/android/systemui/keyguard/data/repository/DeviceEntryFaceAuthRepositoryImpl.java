package com.android.systemui.keyguard.data.repository;

import android.content.Context;
import android.hardware.face.FaceManager;
import android.hardware.face.FaceSensorPropertiesInternal;
import android.os.CancellationSignal;
import com.android.internal.logging.UiEventLogger;
import com.android.keyguard.ActiveUnlockConfig$$ExternalSyntheticOutline0;
import com.android.keyguard.FaceAuthUiEvent;
import com.android.keyguard.FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.biometrics.SideFpsController$$ExternalSyntheticOutline0;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.keyguard.domain.interactor.AlternateBouncerInteractor;
import com.android.systemui.keyguard.domain.interactor.KeyguardInteractor;
import com.android.systemui.keyguard.domain.interactor.KeyguardTransitionInteractor;
import com.android.systemui.log.FaceAuthenticationLogger;
import com.android.systemui.log.SessionTracker;
import com.android.systemui.log.table.TableLogBuffer;
import com.android.systemui.statusbar.phone.KeyguardBypassController;
import com.android.systemui.user.data.repository.UserRepository;
import com.android.systemui.user.data.repository.UserRepositoryImpl;
import java.io.PrintWriter;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlowImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DeviceEntryFaceAuthRepositoryImpl implements DeviceEntryFaceAuthRepository, Dumpable {
    public final StateFlowImpl _authenticationStatus;
    public final StateFlowImpl _canRunFaceAuth;
    public final StateFlowImpl _detectionStatus;
    public final StateFlowImpl _isAuthRunning;
    public final StateFlowImpl _isAuthenticated;
    public final StateFlowImpl _isLockedOut;
    public final AlternateBouncerInteractor alternateBouncerInteractor;
    public final CoroutineScope applicationScope;
    public CancellationSignal authCancellationSignal;
    public final CoroutineDispatcher backgroundDispatcher;
    public final BiometricSettingsRepository biometricSettingsRepository;
    public final StateFlowImpl canRunDetection;
    public StandaloneCoroutine cancelNotReceivedHandlerJob;
    public boolean cancellationInProgress;
    public CancellationSignal detectCancellationSignal;
    public final DeviceEntryFaceAuthRepositoryImpl$detectionCallback$1 detectionCallback;
    public final Set faceAcquiredInfoIgnoreList;
    public final DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1 faceAuthCallback;
    public final FaceAuthenticationLogger faceAuthLogger;
    public FaceAuthUiEvent faceAuthRequestedWhileCancellation;
    public final FaceManager faceManager;
    public StandaloneCoroutine halErrorRetryJob;
    public final Flow isBypassEnabled;
    public final boolean isDetectionSupported;
    public final StateFlowImpl isLockedOut;
    public final KeyguardBypassController keyguardBypassController;
    public final KeyguardInteractor keyguardInteractor;
    public final KeyguardRepository keyguardRepository;
    public final CoroutineDispatcher mainDispatcher;
    public int retryCount;
    public final SessionTracker sessionTracker;
    public final UiEventLogger uiEventsLogger;
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

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0088, code lost:
    
        if (r2 == null) goto L14;
     */
    /* JADX WARN: Type inference failed for: r1v10, types: [com.android.systemui.keyguard.data.repository.DeviceEntryFaceAuthRepositoryImpl$detectionCallback$1] */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.android.systemui.keyguard.data.repository.DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public DeviceEntryFaceAuthRepositoryImpl(android.content.Context r8, android.hardware.face.FaceManager r9, com.android.systemui.user.data.repository.UserRepository r10, com.android.systemui.statusbar.phone.KeyguardBypassController r11, kotlinx.coroutines.CoroutineScope r12, kotlinx.coroutines.CoroutineDispatcher r13, kotlinx.coroutines.CoroutineDispatcher r14, com.android.systemui.log.SessionTracker r15, com.android.internal.logging.UiEventLogger r16, com.android.systemui.log.FaceAuthenticationLogger r17, com.android.systemui.keyguard.data.repository.BiometricSettingsRepository r18, com.android.systemui.keyguard.data.repository.DeviceEntryFingerprintAuthRepository r19, com.android.systemui.keyguard.data.repository.TrustRepository r20, com.android.systemui.keyguard.data.repository.KeyguardRepository r21, com.android.systemui.keyguard.domain.interactor.KeyguardInteractor r22, com.android.systemui.keyguard.domain.interactor.AlternateBouncerInteractor r23, com.android.systemui.log.table.TableLogBuffer r24, com.android.systemui.log.table.TableLogBuffer r25, com.android.systemui.keyguard.domain.interactor.KeyguardTransitionInteractor r26, com.android.systemui.flags.FeatureFlags r27, com.android.systemui.dump.DumpManager r28) {
        /*
            r7 = this;
            r0 = r7
            r1 = r9
            r2 = r11
            r7.<init>()
            r0.faceManager = r1
            r3 = r10
            r0.userRepository = r3
            r0.keyguardBypassController = r2
            r3 = r12
            r0.applicationScope = r3
            r3 = r13
            r0.mainDispatcher = r3
            r3 = r14
            r0.backgroundDispatcher = r3
            r3 = r15
            r0.sessionTracker = r3
            r3 = r16
            r0.uiEventsLogger = r3
            r3 = r17
            r0.faceAuthLogger = r3
            r3 = r18
            r0.biometricSettingsRepository = r3
            r3 = r21
            r0.keyguardRepository = r3
            r3 = r22
            r0.keyguardInteractor = r3
            r3 = r23
            r0.alternateBouncerInteractor = r3
            r3 = 0
            kotlinx.coroutines.flow.StateFlowImpl r4 = kotlinx.coroutines.flow.StateFlowKt.MutableStateFlow(r3)
            r0._authenticationStatus = r4
            kotlinx.coroutines.flow.StateFlowImpl r4 = kotlinx.coroutines.flow.StateFlowKt.MutableStateFlow(r3)
            r0._detectionStatus = r4
            java.lang.Boolean r4 = java.lang.Boolean.FALSE
            kotlinx.coroutines.flow.StateFlowImpl r5 = kotlinx.coroutines.flow.StateFlowKt.MutableStateFlow(r4)
            r0._isLockedOut = r5
            r0.isLockedOut = r5
            if (r1 == 0) goto L5b
            java.util.List r5 = r9.getSensorPropertiesInternal()
            if (r5 == 0) goto L5b
            java.lang.Object r5 = kotlin.collections.CollectionsKt___CollectionsKt.firstOrNull(r5)
            android.hardware.face.FaceSensorPropertiesInternal r5 = (android.hardware.face.FaceSensorPropertiesInternal) r5
            if (r5 == 0) goto L5b
            boolean r5 = r5.supportsFaceDetection
            goto L5c
        L5b:
            r5 = 0
        L5c:
            r0.isDetectionSupported = r5
            kotlinx.coroutines.flow.StateFlowImpl r5 = kotlinx.coroutines.flow.StateFlowKt.MutableStateFlow(r4)
            r0._isAuthRunning = r5
            java.lang.Boolean r5 = java.lang.Boolean.TRUE
            kotlinx.coroutines.flow.StateFlowImpl r5 = kotlinx.coroutines.flow.StateFlowKt.MutableStateFlow(r5)
            r0._canRunFaceAuth = r5
            kotlinx.coroutines.flow.StateFlowImpl r5 = kotlinx.coroutines.flow.StateFlowKt.MutableStateFlow(r4)
            r0.canRunDetection = r5
            kotlinx.coroutines.flow.StateFlowImpl r5 = kotlinx.coroutines.flow.StateFlowKt.MutableStateFlow(r4)
            r0._isAuthenticated = r5
            if (r2 == 0) goto L8a
            com.android.systemui.common.coroutine.ConflatedCallbackFlow r5 = com.android.systemui.common.coroutine.ConflatedCallbackFlow.INSTANCE
            com.android.systemui.keyguard.data.repository.DeviceEntryFaceAuthRepositoryImpl$isBypassEnabled$1$1 r6 = new com.android.systemui.keyguard.data.repository.DeviceEntryFaceAuthRepositoryImpl$isBypassEnabled$1$1
            r6.<init>(r11, r3)
            r5.getClass()
            kotlinx.coroutines.flow.Flow r2 = com.android.systemui.common.coroutine.ConflatedCallbackFlow.conflatedCallbackFlow(r6)
            if (r2 != 0) goto L8f
        L8a:
            kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2 r2 = new kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2
            r2.<init>(r4)
        L8f:
            r0.isBypassEnabled = r2
            com.android.systemui.keyguard.data.repository.DeviceEntryFaceAuthRepositoryImpl$faceLockoutResetCallback$1 r2 = new com.android.systemui.keyguard.data.repository.DeviceEntryFaceAuthRepositoryImpl$faceLockoutResetCallback$1
            r2.<init>()
            if (r1 == 0) goto L9b
            r9.addLockoutResetCallback(r2)
        L9b:
            android.content.res.Resources r1 = r8.getResources()
            r2 = 2130903094(0x7f030036, float:1.7412996E38)
            int[] r1 = r1.getIntArray(r2)
            java.util.stream.IntStream r1 = java.util.Arrays.stream(r1)
            java.util.stream.Stream r1 = r1.boxed()
            java.util.stream.Collector r2 = java.util.stream.Collectors.toSet()
            java.lang.Object r1 = r1.collect(r2)
            java.util.Set r1 = (java.util.Set) r1
            r0.faceAcquiredInfoIgnoreList = r1
            java.lang.String r1 = "DeviceEntryFaceAuthRepositoryImpl"
            r2 = r28
            r2.registerCriticalDumpable(r1, r7)
            com.android.systemui.flags.Flags r1 = com.android.systemui.flags.Flags.INSTANCE
            com.android.systemui.keyguard.data.repository.DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1 r1 = new com.android.systemui.keyguard.data.repository.DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1
            r1.<init>()
            r0.faceAuthCallback = r1
            com.android.systemui.keyguard.data.repository.DeviceEntryFaceAuthRepositoryImpl$detectionCallback$1 r1 = new com.android.systemui.keyguard.data.repository.DeviceEntryFaceAuthRepositoryImpl$detectionCallback$1
            r1.<init>()
            r0.detectionCallback = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.data.repository.DeviceEntryFaceAuthRepositoryImpl.<init>(android.content.Context, android.hardware.face.FaceManager, com.android.systemui.user.data.repository.UserRepository, com.android.systemui.statusbar.phone.KeyguardBypassController, kotlinx.coroutines.CoroutineScope, kotlinx.coroutines.CoroutineDispatcher, kotlinx.coroutines.CoroutineDispatcher, com.android.systemui.log.SessionTracker, com.android.internal.logging.UiEventLogger, com.android.systemui.log.FaceAuthenticationLogger, com.android.systemui.keyguard.data.repository.BiometricSettingsRepository, com.android.systemui.keyguard.data.repository.DeviceEntryFingerprintAuthRepository, com.android.systemui.keyguard.data.repository.TrustRepository, com.android.systemui.keyguard.data.repository.KeyguardRepository, com.android.systemui.keyguard.domain.interactor.KeyguardInteractor, com.android.systemui.keyguard.domain.interactor.AlternateBouncerInteractor, com.android.systemui.log.table.TableLogBuffer, com.android.systemui.log.table.TableLogBuffer, com.android.systemui.keyguard.domain.interactor.KeyguardTransitionInteractor, com.android.systemui.flags.FeatureFlags, com.android.systemui.dump.DumpManager):void");
    }

    public static final void access$onFaceAuthRequestCompleted(DeviceEntryFaceAuthRepositoryImpl deviceEntryFaceAuthRepositoryImpl) {
        deviceEntryFaceAuthRepositoryImpl.cancellationInProgress = false;
        deviceEntryFaceAuthRepositoryImpl._isAuthRunning.setValue(Boolean.FALSE);
        deviceEntryFaceAuthRepositoryImpl.authCancellationSignal = null;
    }

    public final Object authenticate(FaceAuthUiEvent faceAuthUiEvent, boolean z, Continuation continuation) {
        boolean z2;
        Object obj;
        StateFlowImpl stateFlowImpl = this._isAuthRunning;
        boolean booleanValue = ((Boolean) stateFlowImpl.getValue()).booleanValue();
        FaceAuthenticationLogger faceAuthenticationLogger = this.faceAuthLogger;
        if (booleanValue) {
            faceAuthenticationLogger.ignoredFaceAuthTrigger(faceAuthUiEvent, "face auth is currently running");
            return Unit.INSTANCE;
        }
        if (this.cancellationInProgress) {
            faceAuthenticationLogger.queuingRequestWhileCancelling(this.faceAuthRequestedWhileCancellation, faceAuthUiEvent);
            this.faceAuthRequestedWhileCancellation = faceAuthUiEvent;
            return Unit.INSTANCE;
        }
        List list = null;
        this.faceAuthRequestedWhileCancellation = null;
        boolean booleanValue2 = ((Boolean) this._canRunFaceAuth.getValue()).booleanValue();
        CoroutineDispatcher coroutineDispatcher = this.mainDispatcher;
        if (booleanValue2) {
            return BuildersKt.withContext(coroutineDispatcher, new DeviceEntryFaceAuthRepositoryImpl$authenticate$2(this, faceAuthUiEvent, null), continuation);
        }
        if (z && ((Boolean) this.canRunDetection.getValue()).booleanValue()) {
            faceAuthenticationLogger.ignoredFaceAuthTrigger(faceAuthUiEvent, "face auth gating check is false, falling back to detection.");
            if (!this.isDetectionSupported) {
                FaceManager faceManager = this.faceManager;
                if (faceManager != null) {
                    list = faceManager.getSensorPropertiesInternal();
                }
                faceAuthenticationLogger.detectionNotSupported(faceManager, list);
                obj = Unit.INSTANCE;
            } else if (!((Boolean) stateFlowImpl.getValue()).booleanValue() && this.detectCancellationSignal == null) {
                this.detectCancellationSignal = new CancellationSignal();
                obj = BuildersKt.withContext(coroutineDispatcher, new DeviceEntryFaceAuthRepositoryImpl$detect$2(this, null), continuation);
            } else {
                boolean booleanValue3 = ((Boolean) stateFlowImpl.getValue()).booleanValue();
                if (this.detectCancellationSignal != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                faceAuthenticationLogger.skippingDetection(booleanValue3, z2);
                obj = Unit.INSTANCE;
            }
            if (obj == CoroutineSingletons.COROUTINE_SUSPENDED) {
                return obj;
            }
            return Unit.INSTANCE;
        }
        faceAuthenticationLogger.ignoredFaceAuthTrigger(faceAuthUiEvent, "face auth & detect gating check is false");
        return Unit.INSTANCE;
    }

    public final void cancel() {
        CancellationSignal cancellationSignal = this.authCancellationSignal;
        if (cancellationSignal == null) {
            return;
        }
        cancellationSignal.cancel();
        this.cancelNotReceivedHandlerJob = BuildersKt.launch$default(this.applicationScope, null, null, new DeviceEntryFaceAuthRepositoryImpl$cancel$1(this, null), 3);
        this.cancellationInProgress = true;
        this._isAuthRunning.setValue(Boolean.FALSE);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        List list;
        Boolean bool;
        boolean z;
        List sensorPropertiesInternal;
        FaceSensorPropertiesInternal faceSensorPropertiesInternal;
        printWriter.println("DeviceEntryFaceAuthRepositoryImpl state:");
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("  cancellationInProgress: ", this.cancellationInProgress, printWriter);
        printWriter.println("  _isLockedOut.value: " + this._isLockedOut.getValue());
        printWriter.println("  _isAuthRunning.value: " + this._isAuthRunning.getValue());
        printWriter.println("  isDetectionSupported: " + this.isDetectionSupported);
        printWriter.println("  FaceManager state:");
        StringBuilder sb = new StringBuilder("    faceManager: ");
        FaceManager faceManager = this.faceManager;
        sb.append(faceManager);
        printWriter.println(sb.toString());
        String str = null;
        if (faceManager != null) {
            list = faceManager.getSensorPropertiesInternal();
        } else {
            list = null;
        }
        printWriter.println("    sensorPropertiesInternal: " + list);
        if (faceManager != null && (sensorPropertiesInternal = faceManager.getSensorPropertiesInternal()) != null && (faceSensorPropertiesInternal = (FaceSensorPropertiesInternal) CollectionsKt___CollectionsKt.firstOrNull(sensorPropertiesInternal)) != null) {
            bool = Boolean.valueOf(faceSensorPropertiesInternal.supportsFaceDetection);
        } else {
            bool = null;
        }
        printWriter.println("    supportsFaceDetection: " + bool);
        FaceAuthUiEvent faceAuthUiEvent = this.faceAuthRequestedWhileCancellation;
        if (faceAuthUiEvent != null) {
            str = faceAuthUiEvent.getReason();
        }
        FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0.m("  faceAuthRequestedWhileCancellation: ", str, printWriter);
        printWriter.println("  authCancellationSignal: " + this.authCancellationSignal);
        printWriter.println("  detectCancellationSignal: " + this.detectCancellationSignal);
        printWriter.println("  faceAcquiredInfoIgnoreList: " + this.faceAcquiredInfoIgnoreList);
        printWriter.println("  _authenticationStatus: " + this._authenticationStatus.getValue());
        printWriter.println("  _detectionStatus: " + this._detectionStatus.getValue());
        SideFpsController$$ExternalSyntheticOutline0.m("  currentUserId: ", ((UserRepositoryImpl) this.userRepository).getSelectedUserInfo().id, printWriter);
        printWriter.println("  keyguardSessionId: " + this.sessionTracker.getSessionId(1));
        KeyguardBypassController keyguardBypassController = this.keyguardBypassController;
        if (keyguardBypassController != null) {
            z = keyguardBypassController.getBypassEnabled();
        } else {
            z = false;
        }
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("  lockscreenBypassEnabled: ", z, printWriter);
    }

    public /* synthetic */ DeviceEntryFaceAuthRepositoryImpl(Context context, FaceManager faceManager, UserRepository userRepository, KeyguardBypassController keyguardBypassController, CoroutineScope coroutineScope, CoroutineDispatcher coroutineDispatcher, CoroutineDispatcher coroutineDispatcher2, SessionTracker sessionTracker, UiEventLogger uiEventLogger, FaceAuthenticationLogger faceAuthenticationLogger, BiometricSettingsRepository biometricSettingsRepository, DeviceEntryFingerprintAuthRepository deviceEntryFingerprintAuthRepository, TrustRepository trustRepository, KeyguardRepository keyguardRepository, KeyguardInteractor keyguardInteractor, AlternateBouncerInteractor alternateBouncerInteractor, TableLogBuffer tableLogBuffer, TableLogBuffer tableLogBuffer2, KeyguardTransitionInteractor keyguardTransitionInteractor, FeatureFlags featureFlags, DumpManager dumpManager, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : faceManager, userRepository, (i & 8) != 0 ? null : keyguardBypassController, coroutineScope, coroutineDispatcher, coroutineDispatcher2, sessionTracker, uiEventLogger, faceAuthenticationLogger, biometricSettingsRepository, deviceEntryFingerprintAuthRepository, trustRepository, keyguardRepository, keyguardInteractor, alternateBouncerInteractor, tableLogBuffer, tableLogBuffer2, keyguardTransitionInteractor, featureFlags, dumpManager);
    }
}
