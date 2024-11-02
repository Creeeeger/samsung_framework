package com.android.systemui.qs.bar.soundcraft.interfaces.wearable;

import android.content.Context;
import com.android.systemui.qs.bar.soundcraft.interfaces.settings.SoundCraftSettings;
import com.android.systemui.qs.bar.soundcraft.interfaces.wearable.requester.UpdateInfoRequester;
import com.android.systemui.qs.bar.soundcraft.model.BudsInfo;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WearableManager {
    public final Context context;
    public final SoundCraftSettings soundCraftSettings;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public WearableManager(Context context, SoundCraftSettings soundCraftSettings) {
        this.context = context;
        this.soundCraftSettings = soundCraftSettings;
    }

    public final void updateBudsInfo(BudsInfo budsInfo) {
        new UpdateInfoRequester(this.context, this.soundCraftSettings.budsPluginPackageName, budsInfo).bindService();
    }
}
