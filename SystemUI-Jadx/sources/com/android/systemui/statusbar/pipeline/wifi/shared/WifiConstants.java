package com.android.systemui.statusbar.pipeline.wifi.shared;

import android.content.Context;
import com.android.keyguard.KeyguardClockSwitchController$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.R;
import com.android.systemui.dump.DumpManager;
import java.io.PrintWriter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WifiConstants implements Dumpable {
    public final boolean alwaysShowIconIfEnabled;

    public WifiConstants(Context context, DumpManager dumpManager) {
        dumpManager.registerNormalDumpable("WifiConstants", this);
        this.alwaysShowIconIfEnabled = context.getResources().getBoolean(R.bool.config_showWifiIndicatorWhenEnabled);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("alwaysShowIconIfEnabled="), this.alwaysShowIconIfEnabled, printWriter);
    }
}
