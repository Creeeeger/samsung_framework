package com.android.settingslib.bluetooth;

import android.content.Context;
import android.media.AudioManager;
import android.media.audiopolicy.AudioProductStrategy;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class HearingAidAudioRoutingHelper {
    public final AudioManager mAudioManager;

    public HearingAidAudioRoutingHelper(Context context) {
        this.mAudioManager = (AudioManager) context.getSystemService(AudioManager.class);
    }

    public List<AudioProductStrategy> getAudioProductStrategies() {
        return AudioManager.getAudioProductStrategies();
    }

    public final boolean removePreferredDeviceForStrategies(List list) {
        Iterator it = list.iterator();
        boolean z = true;
        while (it.hasNext()) {
            z &= this.mAudioManager.removePreferredDeviceForStrategy((AudioProductStrategy) it.next());
        }
        return z;
    }
}
