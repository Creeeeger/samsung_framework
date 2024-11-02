package com.android.wm.shell.compatui;

import android.content.Context;
import android.content.SharedPreferences;
import android.provider.DeviceConfig;
import com.android.systemui.R;
import com.android.wm.shell.common.ShellExecutor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CompatUIConfiguration implements DeviceConfig.OnPropertiesChangedListener {
    public final SharedPreferences mCompatUISharedPreferences;
    public boolean mIsLetterboxRestartDialogAllowed;
    public final boolean mIsRestartDialogEnabled;
    public boolean mIsRestartDialogOverrideEnabled;
    public final SharedPreferences mLetterboxEduSharedPreferences;

    public CompatUIConfiguration(Context context, ShellExecutor shellExecutor) {
        this.mIsRestartDialogEnabled = context.getResources().getBoolean(R.bool.config_letterboxIsRestartDialogEnabled);
        context.getResources().getBoolean(R.bool.config_letterboxIsReachabilityEducationEnabled);
        this.mIsLetterboxRestartDialogAllowed = DeviceConfig.getBoolean("window_manager", "enable_letterbox_restart_confirmation_dialog", true);
        DeviceConfig.getBoolean("window_manager", "enable_letterbox_education_for_reachability", true);
        DeviceConfig.addOnPropertiesChangedListener("app_compat", shellExecutor, this);
        this.mCompatUISharedPreferences = context.getSharedPreferences("dont_show_restart_dialog", 0);
        this.mLetterboxEduSharedPreferences = context.getSharedPreferences("has_seen_letterbox_education", 0);
    }

    public final void onPropertiesChanged(DeviceConfig.Properties properties) {
        if (properties.getKeyset().contains("enable_letterbox_restart_confirmation_dialog")) {
            this.mIsLetterboxRestartDialogAllowed = DeviceConfig.getBoolean("window_manager", "enable_letterbox_restart_confirmation_dialog", true);
        }
        if (properties.getKeyset().contains("enable_letterbox_education_for_reachability")) {
            DeviceConfig.getBoolean("window_manager", "enable_letterbox_education_for_reachability", true);
        }
    }
}
