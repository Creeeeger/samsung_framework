package com.android.systemui.volume;

import com.android.systemui.plugins.VolumeDialogController;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class VolumeDialogControllerImpl$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ VolumeDialogControllerImpl$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ((VolumeDialogControllerImpl) this.f$0).mIsVibrating = false;
                return;
            case 1:
                VolumeDialogControllerImpl volumeDialogControllerImpl = (VolumeDialogControllerImpl) this.f$0;
                if (volumeDialogControllerImpl.mIsBudsTogetherEnabled) {
                    volumeDialogControllerImpl.onVolumeChangedW(23, 0);
                }
                volumeDialogControllerImpl.updateStreamNameMusicShare();
                return;
            case 2:
                ((VolumeDialogControllerImpl) this.f$0).updateStreamNameMusicShare();
                return;
            default:
                ((VolumeDialogController.Callbacks) ((Map.Entry) this.f$0).getKey()).onShowVolumeLimiterToast();
                return;
        }
    }
}
