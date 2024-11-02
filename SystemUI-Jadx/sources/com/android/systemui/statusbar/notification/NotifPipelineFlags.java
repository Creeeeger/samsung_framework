package com.android.systemui.statusbar.notification;

import android.content.Context;
import com.android.internal.config.sysui.SystemUiSystemPropertiesFlags;
import com.android.systemui.flags.FeatureFlags;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotifPipelineFlags {
    public final FeatureFlags featureFlags;
    public final SystemUiSystemPropertiesFlags.FlagResolver sysPropFlags;

    public NotifPipelineFlags(Context context, FeatureFlags featureFlags, SystemUiSystemPropertiesFlags.FlagResolver flagResolver) {
        this.featureFlags = featureFlags;
        this.sysPropFlags = flagResolver;
    }
}
