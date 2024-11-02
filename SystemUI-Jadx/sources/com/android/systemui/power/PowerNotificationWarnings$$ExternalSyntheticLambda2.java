package com.android.systemui.power;

import android.content.DialogInterface;
import com.android.systemui.volume.Events;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PowerNotificationWarnings$$ExternalSyntheticLambda2 implements DialogInterface.OnDismissListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PowerNotificationWarnings f$0;

    public /* synthetic */ PowerNotificationWarnings$$ExternalSyntheticLambda2(PowerNotificationWarnings powerNotificationWarnings, int i) {
        this.$r8$classId = i;
        this.f$0 = powerNotificationWarnings;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        switch (this.$r8$classId) {
            case 0:
                PowerNotificationWarnings powerNotificationWarnings = this.f$0;
                powerNotificationWarnings.mUsbHighTempDialog = null;
                Events.writeEvent(20, 9, Boolean.valueOf(powerNotificationWarnings.mKeyguard.isKeyguardLocked()));
                return;
            case 1:
                this.f$0.mThermalShutdownDialog = null;
                return;
            case 2:
                PowerNotificationWarnings powerNotificationWarnings2 = this.f$0;
                powerNotificationWarnings2.mSaverConfirmation = null;
                powerNotificationWarnings2.logEvent(BatteryWarningEvents$LowBatteryWarningEvent.SAVER_CONFIRM_DISMISS);
                return;
            default:
                this.f$0.mHighTempDialog = null;
                return;
        }
    }
}
