package com.android.systemui.qs.bar.soundcraft.interfaces.settings;

import android.content.Context;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SoundCraftSettings {
    public String budsPluginPackageName = "";
    public final Context context;
    public boolean isAppSettingEnabled;

    public SoundCraftSettings(Context context) {
        this.context = context;
    }

    public final String toString() {
        return "[isAppSettingEnabled=" + this.isAppSettingEnabled + ", budsPluginPackageName=" + this.budsPluginPackageName + "]";
    }
}
