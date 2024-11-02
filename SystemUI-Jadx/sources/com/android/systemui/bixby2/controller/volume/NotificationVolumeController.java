package com.android.systemui.bixby2.controller.volume;

import android.app.NotificationManager;
import com.samsung.systemui.splugins.lockstar.PluginLockStar;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NotificationVolumeController extends VolumeType {
    private final String streamTypeToString = PluginLockStar.NOTIFICATION_TYPE;

    private final boolean isAllowedNotification(NotificationManager.Policy policy) {
        int i = policy.priorityCategories;
        if ((i & 2) == 0 && (i & 4) == 0 && (i & 1) == 0 && (i & 128) == 0 && (i & 8) == 0 && (i & 16) == 0 && (i & 256) == 0) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.bixby2.controller.volume.VolumeType
    public int getStreamType() {
        return 5;
    }

    @Override // com.android.systemui.bixby2.controller.volume.VolumeType
    public String getStreamTypeToString() {
        return this.streamTypeToString;
    }

    @Override // com.android.systemui.bixby2.controller.volume.VolumeType
    public boolean isStreamDisabled() {
        if (isVoiceCapable() && getRingerMode() != 2) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.bixby2.controller.volume.VolumeType
    public boolean volumeStreamAllowedByDnd(NotificationManager.Policy policy) {
        if (isVoiceCapable() && !isAllowedNotification(policy)) {
            return false;
        }
        return true;
    }
}
