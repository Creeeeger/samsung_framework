package com.android.systemui.statusbar.phone;

import com.android.systemui.statusbar.phone.CentralSurfacesImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class CentralSurfacesImpl$11$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ CentralSurfacesImpl.AnonymousClass11 f$0;

    public /* synthetic */ CentralSurfacesImpl$11$$ExternalSyntheticLambda0(CentralSurfacesImpl.AnonymousClass11 anonymousClass11, int i) {
        this.$r8$classId = i;
        this.f$0 = anonymousClass11;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b7, code lost:
    
        if (((com.android.systemui.flags.FeatureFlagsRelease) r0.mFeatureFlags).isEnabled(com.android.systemui.flags.Flags.ZJ_285570694_LOCKSCREEN_TRANSITION_FROM_AOD) != false) goto L40;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            r7 = this;
            int r0 = r7.$r8$classId
            switch(r0) {
                case 0: goto L19;
                case 1: goto L13;
                case 2: goto L7;
                default: goto L5;
            }
        L5:
            goto Lc3
        L7:
            com.android.systemui.statusbar.phone.CentralSurfacesImpl$11 r7 = r7.f$0
            com.android.systemui.statusbar.phone.CentralSurfacesImpl r7 = com.android.systemui.statusbar.phone.CentralSurfacesImpl.this
            com.android.systemui.statusbar.phone.CentralSurfacesCommandQueueCallbacks r0 = r7.mCommandQueueCallbacks
            int r7 = r7.mLastCameraLaunchSource
            r0.onCameraLaunchGestureDetected(r7)
            return
        L13:
            com.android.systemui.statusbar.phone.CentralSurfacesImpl$11 r7 = r7.f$0
            r7.startLockscreenTransitionFromAod()
            return
        L19:
            com.android.systemui.statusbar.phone.CentralSurfacesImpl$11 r7 = r7.f$0
            com.android.systemui.statusbar.phone.CentralSurfacesImpl r0 = com.android.systemui.statusbar.phone.CentralSurfacesImpl.this
            r1 = 1
            r0.mDeviceInteractive = r1
            boolean r2 = r0.shouldAnimateDozeWakeup()
            r3 = 0
            if (r2 == 0) goto L7c
            android.content.Context r2 = r0.mContext
            android.content.ContentResolver r2 = r2.getContentResolver()
            com.android.systemui.settings.UserTracker r4 = r0.mUserTracker
            com.android.systemui.settings.UserTrackerImpl r4 = (com.android.systemui.settings.UserTrackerImpl) r4
            int r4 = r4.getUserId()
            java.lang.String r5 = "sfps_performant_auth_enabled_v2"
            r6 = -1
            int r2 = android.provider.Settings.Secure.getIntForUser(r2, r5, r6, r4)
            if (r2 <= 0) goto L41
            r2 = r1
            goto L42
        L41:
            r2 = r3
        L42:
            com.android.systemui.statusbar.phone.DozeServiceHost r4 = r0.mDozeServiceHost
            boolean r4 = r4.mPulsing
            if (r4 != 0) goto L78
            com.android.systemui.statusbar.SysuiStatusBarStateController r4 = r0.mStatusBarStateController
            com.android.systemui.statusbar.StatusBarStateControllerImpl r4 = (com.android.systemui.statusbar.StatusBarStateControllerImpl) r4
            float r4 = r4.mDozeAmount
            r5 = 1065353216(0x3f800000, float:1.0)
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 != 0) goto L78
            com.android.systemui.keyguard.WakefulnessLifecycle r4 = r0.mWakefulnessLifecycle
            int r4 = r4.mLastWakeReason
            if (r4 != r1) goto L78
            javax.inject.Provider r4 = r0.mFingerprintManager
            java.lang.Object r5 = r4.get()
            android.hardware.fingerprint.FingerprintManager r5 = (android.hardware.fingerprint.FingerprintManager) r5
            boolean r5 = r5.isPowerbuttonFps()
            if (r5 == 0) goto L78
            java.lang.Object r4 = r4.get()
            android.hardware.fingerprint.FingerprintManager r4 = (android.hardware.fingerprint.FingerprintManager) r4
            boolean r4 = r4.hasEnrolledFingerprints()
            if (r4 == 0) goto L78
            if (r2 != 0) goto L78
            r2 = r1
            goto L79
        L78:
            r2 = r3
        L79:
            r0.mShouldDelayWakeUpAnimation = r2
            goto L7e
        L7c:
            r0.mShouldDelayWakeUpAnimation = r3
        L7e:
            com.android.systemui.shade.ShadeSurface r2 = r0.mShadeSurface
            boolean r4 = r0.mShouldDelayWakeUpAnimation
            com.android.systemui.shade.NotificationPanelViewController r2 = (com.android.systemui.shade.NotificationPanelViewController) r2
            boolean r5 = r2.mWillPlayDelayedDozeAmountAnimation
            if (r5 != r4) goto L89
            goto L98
        L89:
            r2.mWillPlayDelayedDozeAmountAnimation = r4
            com.android.systemui.statusbar.notification.NotificationWakeUpCoordinator r5 = r2.mWakeUpCoordinator
            r5.logDelayingClockWakeUpAnimation(r4)
            com.android.systemui.media.controls.ui.KeyguardMediaController r4 = r2.mKeyguardMediaController
            r4.getClass()
            r2.positionClockAndNotifications(r3)
        L98:
            com.android.systemui.statusbar.notification.NotificationWakeUpCoordinator r2 = r0.mWakeUpCoordinator
            boolean r4 = r0.mShouldDelayWakeUpAnimation
            r2.setWakingUp(r1, r4)
            r0.updateVisibleToUser()
            r0.updateIsKeyguard()
            com.android.systemui.statusbar.phone.DozeParameters r2 = r0.mDozeParameters
            boolean r2 = r2.getAlwaysOn()
            if (r2 == 0) goto Lba
            com.android.systemui.flags.ReleasedFlag r2 = com.android.systemui.flags.Flags.ZJ_285570694_LOCKSCREEN_TRANSITION_FROM_AOD
            com.android.systemui.flags.FeatureFlags r4 = r0.mFeatureFlags
            com.android.systemui.flags.FeatureFlagsRelease r4 = (com.android.systemui.flags.FeatureFlagsRelease) r4
            boolean r2 = r4.isEnabled(r2)
            if (r2 == 0) goto Lba
            goto Lbb
        Lba:
            r1 = r3
        Lbb:
            r0.mShouldDelayLockscreenTransitionFromAod = r1
            if (r1 != 0) goto Lc2
            r7.startLockscreenTransitionFromAod()
        Lc2:
            return
        Lc3:
            com.android.systemui.statusbar.phone.CentralSurfacesImpl$11 r7 = r7.f$0
            com.android.systemui.statusbar.phone.CentralSurfacesImpl r7 = com.android.systemui.statusbar.phone.CentralSurfacesImpl.this
            com.android.systemui.statusbar.phone.CentralSurfacesCommandQueueCallbacks r7 = r7.mCommandQueueCallbacks
            r7.onEmergencyActionLaunchGestureDetected()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.CentralSurfacesImpl$11$$ExternalSyntheticLambda0.run():void");
    }
}
