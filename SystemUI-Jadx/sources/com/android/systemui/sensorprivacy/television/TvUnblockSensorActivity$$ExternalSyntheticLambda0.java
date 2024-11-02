package com.android.systemui.sensorprivacy.television;

import android.content.Intent;
import android.view.View;
import android.widget.Toast;
import com.android.systemui.statusbar.policy.IndividualSensorPrivacyController;
import com.android.systemui.statusbar.policy.IndividualSensorPrivacyControllerImpl;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class TvUnblockSensorActivity$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TvUnblockSensorActivity f$0;

    public /* synthetic */ TvUnblockSensorActivity$$ExternalSyntheticLambda0(TvUnblockSensorActivity tvUnblockSensorActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = tvUnblockSensorActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.$r8$classId) {
            case 0:
                TvUnblockSensorActivity tvUnblockSensorActivity = this.f$0;
                int i = tvUnblockSensorActivity.mSensor;
                IndividualSensorPrivacyController individualSensorPrivacyController = tvUnblockSensorActivity.mSensorPrivacyController;
                if (i == Integer.MAX_VALUE) {
                    IndividualSensorPrivacyControllerImpl individualSensorPrivacyControllerImpl = (IndividualSensorPrivacyControllerImpl) individualSensorPrivacyController;
                    individualSensorPrivacyControllerImpl.setSensorBlocked(5, 2, false);
                    individualSensorPrivacyControllerImpl.setSensorBlocked(5, 1, false);
                    return;
                }
                ((IndividualSensorPrivacyControllerImpl) individualSensorPrivacyController).setSensorBlocked(5, i, false);
                return;
            case 1:
                TvUnblockSensorActivity tvUnblockSensorActivity2 = this.f$0;
                int i2 = TvUnblockSensorActivity.$r8$clinit;
                tvUnblockSensorActivity2.getClass();
                Intent intent = new Intent("android.settings.MANAGE_MICROPHONE_PRIVACY");
                if (intent.resolveActivityInfo(tvUnblockSensorActivity2.getPackageManager(), QuickStepContract.SYSUI_STATE_IME_SWITCHER_SHOWING) == null) {
                    Toast.makeText(tvUnblockSensorActivity2, 17041519, 0).show();
                    tvUnblockSensorActivity2.finish();
                    return;
                } else {
                    tvUnblockSensorActivity2.startActivity(intent);
                    tvUnblockSensorActivity2.finish();
                    return;
                }
            default:
                TvUnblockSensorActivity tvUnblockSensorActivity3 = this.f$0;
                int i3 = TvUnblockSensorActivity.$r8$clinit;
                tvUnblockSensorActivity3.finish();
                return;
        }
    }
}
