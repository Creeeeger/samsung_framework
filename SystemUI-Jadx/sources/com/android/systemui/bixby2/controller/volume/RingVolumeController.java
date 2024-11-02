package com.android.systemui.bixby2.controller.volume;

import android.app.NotificationManager;
import com.android.systemui.bixby2.actionresult.ActionResults;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RingVolumeController extends VolumeType {
    private final String streamTypeToString = "Ringtone";

    @Override // com.android.systemui.bixby2.controller.volume.VolumeType
    public int getStatus() {
        if (isVoiceCapable()) {
            return 1;
        }
        return 4;
    }

    @Override // com.android.systemui.bixby2.controller.volume.VolumeType
    public String getStatusCode() {
        if (isVoiceCapable()) {
            return "success";
        }
        return ActionResults.RESULT_DO_NOT_SUPPORT_CALL;
    }

    @Override // com.android.systemui.bixby2.controller.volume.VolumeType
    public int getStreamType() {
        return 2;
    }

    @Override // com.android.systemui.bixby2.controller.volume.VolumeType
    public String getStreamTypeToString() {
        return this.streamTypeToString;
    }

    @Override // com.android.systemui.bixby2.controller.volume.VolumeType
    public boolean volumeStreamAllowedByDnd(NotificationManager.Policy policy) {
        return true;
    }
}
