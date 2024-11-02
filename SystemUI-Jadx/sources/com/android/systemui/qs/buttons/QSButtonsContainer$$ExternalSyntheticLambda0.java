package com.android.systemui.qs.buttons;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class QSButtonsContainer$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ QSButtonsContainer f$0;

    public /* synthetic */ QSButtonsContainer$$ExternalSyntheticLambda0(QSButtonsContainer qSButtonsContainer) {
        this.f$0 = qSButtonsContainer;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0066  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            r6 = this;
            com.android.systemui.qs.buttons.QSButtonsContainer r6 = r6.f$0
            int r0 = com.android.systemui.qs.buttons.QSButtonsContainer.$r8$clinit
            r6.getClass()
            boolean r0 = com.android.systemui.util.DeviceState.supportsMultipleUsers()
            r1 = 4
            r2 = 0
            if (r0 == 0) goto L22
            com.android.systemui.qs.buttons.QSMumButton r0 = r6.mMumButton
            com.android.systemui.qs.buttons.QSMumButton$MumAndDexHelper r0 = r0.mMumAndDexHelper
            r0.updateMumSwitchVisibility()
            com.android.systemui.qs.buttons.QSMumButton r0 = r6.mMumButton
            boolean r3 = r6.mExpanded
            if (r3 != 0) goto L1e
            r3 = r1
            goto L1f
        L1e:
            r3 = r2
        L1f:
            r0.setVisibility(r3)
        L22:
            com.android.systemui.qs.buttons.QSSettingsButton r0 = r6.mSettingsButton
            android.view.View r0 = r0.mSettingsButtonBadge
            if (r0 != 0) goto L29
            goto L2e
        L29:
            r3 = 8
            r0.setVisibility(r3)
        L2e:
            com.android.systemui.qs.buttons.QSPowerButton r0 = r6.mPowerButton
            boolean r3 = r6.mExpanded
            if (r3 != 0) goto L36
            r3 = r1
            goto L37
        L36:
            r3 = r2
        L37:
            r0.setVisibility(r3)
            com.android.systemui.qs.buttons.QSEditButton r0 = r6.mEditButton
            boolean r3 = r6.mExpanded
            r4 = 1
            if (r3 == 0) goto L70
            com.android.systemui.qs.SecQSPanelController r3 = r0.mQsPanelController
            if (r3 == 0) goto L6b
            com.android.systemui.qs.SecQSPanelResourcePicker r3 = r0.mResourcePicker
            com.android.systemui.util.SettingsHelper r5 = r3.mSettingsHelper
            boolean r5 = r5.isEmergencyMode()
            if (r5 != 0) goto L68
            com.android.systemui.knox.KnoxStateMonitor r3 = r3.mKnoxStateMonitor
            com.android.systemui.knox.KnoxStateMonitorImpl r3 = (com.android.systemui.knox.KnoxStateMonitorImpl) r3
            com.android.systemui.knox.CustomSdkMonitor r3 = r3.mCustomSdkMonitor
            if (r3 == 0) goto L62
            int r3 = r3.mKnoxCustomQuickPanelEditMode
            if (r3 != 0) goto L5d
            r3 = r2
            goto L5e
        L5d:
            r3 = r4
        L5e:
            if (r3 == 0) goto L62
            r3 = r4
            goto L63
        L62:
            r3 = r2
        L63:
            if (r3 != 0) goto L66
            goto L68
        L66:
            r3 = r2
            goto L69
        L68:
            r3 = r4
        L69:
            r3 = r3 ^ r4
            goto L6c
        L6b:
            r3 = r2
        L6c:
            if (r3 != 0) goto L6f
            goto L70
        L6f:
            r1 = r2
        L70:
            r0.setVisibility(r1)
            r6.setClickable(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.buttons.QSButtonsContainer$$ExternalSyntheticLambda0.run():void");
    }
}
