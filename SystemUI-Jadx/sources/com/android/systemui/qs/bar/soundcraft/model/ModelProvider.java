package com.android.systemui.qs.bar.soundcraft.model;

import android.content.Context;
import com.android.systemui.qs.bar.soundcraft.interfaces.settings.SoundCraftSettings;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ModelProvider {
    public BudsInfo budsInfo = new BudsInfo(null, null, null, null, null, null, null, null, null, null, null, null, 4095, null);
    public String playingAudioPackageNameForAppSetting;
    public final SoundCraftSettings settings;

    public ModelProvider(Context context, SoundCraftSettings soundCraftSettings) {
        this.settings = soundCraftSettings;
    }
}
