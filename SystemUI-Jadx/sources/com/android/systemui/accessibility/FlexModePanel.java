package com.android.systemui.accessibility;

import android.content.Context;
import android.content.res.Configuration;
import com.android.systemui.CoreStartable;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.phone.AutoHideController;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.SettingsHelper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FlexModePanel implements ConfigurationController.ConfigurationListener, CoreStartable {
    public FlexModePanel(Context context, ConfigurationController configurationController, CommandQueue commandQueue, SettingsHelper settingsHelper, AutoHideController autoHideController) {
    }

    @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
    public final void onConfigChanged(Configuration configuration) {
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
    }
}
