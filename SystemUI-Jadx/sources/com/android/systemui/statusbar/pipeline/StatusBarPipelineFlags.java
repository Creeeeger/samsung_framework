package com.android.systemui.statusbar.pipeline;

import android.content.Context;
import com.android.systemui.BasicRune;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarPipelineFlags {
    public final FeatureFlags featureFlags;
    public final String mobileSlot;
    public final String mobileSlot2;
    public final String wifiSlot;

    public StatusBarPipelineFlags(Context context, FeatureFlags featureFlags) {
        this.featureFlags = featureFlags;
        this.mobileSlot = context.getString(17042930);
        this.mobileSlot2 = context.getString(17042931);
        this.wifiSlot = context.getString(17042951);
    }

    public final boolean isIconControlledByFlags(String str) {
        if (Intrinsics.areEqual(str, this.wifiSlot)) {
            useNewWifiIcon();
        } else {
            if (!Intrinsics.areEqual(str, this.mobileSlot) && (!BasicRune.STATUS_NETWORK_MULTI_SIM || !Intrinsics.areEqual(str, this.mobileSlot2))) {
                return false;
            }
            useNewMobileIcons();
        }
        return true;
    }

    public final void useNewMobileIcons() {
        Flags.INSTANCE.getClass();
        ((FeatureFlagsRelease) this.featureFlags).isEnabled(Flags.NEW_STATUS_BAR_MOBILE_ICONS);
    }

    public final void useNewWifiIcon() {
        Flags.INSTANCE.getClass();
        ((FeatureFlagsRelease) this.featureFlags).isEnabled(Flags.NEW_STATUS_BAR_WIFI_ICON);
    }
}
