package com.android.systemui.bixby2.util;

import android.content.Context;
import com.samsung.android.media.SemSoundAssistantManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SemSoundAssistantManagerWrapper {
    private final boolean isAdjustMediaVolumeOnly;
    private SemSoundAssistantManager semSoundAssistantManager;

    public SemSoundAssistantManagerWrapper(Context context) {
        SemSoundAssistantManager semSoundAssistantManager = new SemSoundAssistantManager(context);
        this.semSoundAssistantManager = semSoundAssistantManager;
        this.isAdjustMediaVolumeOnly = semSoundAssistantManager.getVolumeKeyMode() == 1;
    }

    public final SemSoundAssistantManager getSemSoundAssistantManager() {
        return this.semSoundAssistantManager;
    }

    public final boolean isAdjustMediaVolumeOnly() {
        return this.isAdjustMediaVolumeOnly;
    }

    public final void setSemSoundAssistantManager(SemSoundAssistantManager semSoundAssistantManager) {
        this.semSoundAssistantManager = semSoundAssistantManager;
    }
}
