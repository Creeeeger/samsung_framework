package com.android.keyguard;

import com.android.keyguard.KeyguardSecurityModel;
import com.android.settingslib.fuelgauge.BatteryStatus;
import com.android.systemui.statusbar.KeyguardBatteryStatus;
import com.samsung.android.cover.CoverState;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda20 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda20(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((KeyguardUpdateMonitorCallback) obj).onSecurityViewChanged((KeyguardSecurityModel.SecurityMode) this.f$0);
                return;
            case 1:
                ((KeyguardUpdateMonitorCallback) obj).onUpdateCoverState((CoverState) this.f$0);
                return;
            default:
                ((KeyguardUpdateMonitorCallback) obj).onRefreshBatteryInfo((KeyguardBatteryStatus) ((BatteryStatus) this.f$0));
                return;
        }
    }
}
