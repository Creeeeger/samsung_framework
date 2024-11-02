package com.android.systemui.statusbar.notification.shelf.domain.interactor;

import com.android.systemui.keyguard.data.repository.DeviceEntryFaceAuthRepository;
import com.android.systemui.keyguard.data.repository.DeviceEntryFaceAuthRepositoryImpl;
import com.android.systemui.keyguard.data.repository.KeyguardRepository;
import com.android.systemui.keyguard.data.repository.KeyguardRepositoryImpl;
import com.android.systemui.statusbar.LockscreenShadeTransitionController;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.util.time.SystemClock;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationShelfInteractor {
    public final CentralSurfaces centralSurfaces;
    public final DeviceEntryFaceAuthRepository deviceEntryFaceAuthRepository;
    public final KeyguardRepository keyguardRepository;
    public final LockscreenShadeTransitionController keyguardTransitionController;
    public final SystemClock systemClock;

    public NotificationShelfInteractor(KeyguardRepository keyguardRepository, DeviceEntryFaceAuthRepository deviceEntryFaceAuthRepository, CentralSurfaces centralSurfaces, SystemClock systemClock, LockscreenShadeTransitionController lockscreenShadeTransitionController) {
        this.keyguardRepository = keyguardRepository;
        this.deviceEntryFaceAuthRepository = deviceEntryFaceAuthRepository;
        this.centralSurfaces = centralSurfaces;
        this.systemClock = systemClock;
        this.keyguardTransitionController = lockscreenShadeTransitionController;
    }

    public final FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 isShelfStatic() {
        return new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(((KeyguardRepositoryImpl) this.keyguardRepository).isKeyguardShowing, ((DeviceEntryFaceAuthRepositoryImpl) this.deviceEntryFaceAuthRepository).isBypassEnabled, new NotificationShelfInteractor$isShelfStatic$1(null));
    }
}
