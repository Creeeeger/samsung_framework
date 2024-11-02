package com.android.systemui.keyguard.domain.interactor;

import com.android.keyguard.FaceAuthUiEvent;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.CoreStartable;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.Flags;
import com.android.systemui.keyguard.data.repository.DeviceEntryFaceAuthRepository;
import com.android.systemui.keyguard.data.repository.DeviceEntryFaceAuthRepositoryImpl;
import com.android.systemui.log.FaceAuthenticationLogger;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SystemUIKeyguardFaceAuthInteractor implements CoreStartable, KeyguardFaceAuthInteractor {
    public final FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 authenticationStatus;
    public final FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 detectionStatus;
    public final FaceAuthenticationLogger faceAuthenticationLogger;
    public final FeatureFlags featureFlags;
    public final List listeners = new ArrayList();
    public final DeviceEntryFaceAuthRepository repository;

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

    public SystemUIKeyguardFaceAuthInteractor(CoroutineScope coroutineScope, CoroutineDispatcher coroutineDispatcher, DeviceEntryFaceAuthRepository deviceEntryFaceAuthRepository, PrimaryBouncerInteractor primaryBouncerInteractor, AlternateBouncerInteractor alternateBouncerInteractor, KeyguardTransitionInteractor keyguardTransitionInteractor, FeatureFlags featureFlags, FaceAuthenticationLogger faceAuthenticationLogger, KeyguardUpdateMonitor keyguardUpdateMonitor) {
        this.repository = deviceEntryFaceAuthRepository;
        this.featureFlags = featureFlags;
        this.faceAuthenticationLogger = faceAuthenticationLogger;
        DeviceEntryFaceAuthRepositoryImpl deviceEntryFaceAuthRepositoryImpl = (DeviceEntryFaceAuthRepositoryImpl) deviceEntryFaceAuthRepository;
        this.authenticationStatus = new FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1(deviceEntryFaceAuthRepositoryImpl._authenticationStatus);
        this.detectionStatus = new FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1(deviceEntryFaceAuthRepositoryImpl._detectionStatus);
    }

    public final void runFaceAuth(FaceAuthUiEvent faceAuthUiEvent) {
        Flags flags = Flags.INSTANCE;
        this.featureFlags.getClass();
        this.faceAuthenticationLogger.ignoredFaceAuthTrigger(faceAuthUiEvent, "Skipping face auth request because feature flag is false");
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        Flags flags = Flags.INSTANCE;
        this.featureFlags.getClass();
    }
}
