package com.android.systemui.statusbar.policy;

import android.content.Context;
import android.content.res.Configuration;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.LargeScreenUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RemoteInputQuickSettingsDisabler implements ConfigurationController.ConfigurationListener {
    public final Context context;
    public boolean isLandscape;
    public boolean remoteInputActive;
    public boolean shouldUseSplitNotificationShade;

    public RemoteInputQuickSettingsDisabler(Context context, CommandQueue commandQueue, ConfigurationController configurationController) {
        boolean z;
        this.context = context;
        if (context.getResources().getConfiguration().orientation == 2) {
            z = true;
        } else {
            z = false;
        }
        this.isLandscape = z;
        this.shouldUseSplitNotificationShade = LargeScreenUtils.shouldUseSplitNotificationShade(context.getResources());
        ((ConfigurationControllerImpl) configurationController).addCallback(this);
    }

    @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
    public final void onConfigChanged(Configuration configuration) {
        boolean z;
        if (configuration.orientation == 2) {
            z = true;
        } else {
            z = false;
        }
        if (z != this.isLandscape) {
            this.isLandscape = z;
        }
        boolean shouldUseSplitNotificationShade = LargeScreenUtils.shouldUseSplitNotificationShade(this.context.getResources());
        if (shouldUseSplitNotificationShade != this.shouldUseSplitNotificationShade) {
            this.shouldUseSplitNotificationShade = shouldUseSplitNotificationShade;
        }
    }
}
