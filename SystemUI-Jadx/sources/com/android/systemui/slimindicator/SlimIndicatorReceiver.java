package com.android.systemui.slimindicator;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class SlimIndicatorReceiver extends BroadcastReceiver {
    public IntentFilter mFilter;
    public final SlimIndicatorSettingsBackUpManager mSettingsBackUpManager;

    public SlimIndicatorReceiver(SlimIndicatorSettingsBackUpManager slimIndicatorSettingsBackUpManager) {
        this.mSettingsBackUpManager = slimIndicatorSettingsBackUpManager;
        setFilter();
    }

    public abstract void register();

    public abstract void setFilter();

    public abstract void unregister();
}
