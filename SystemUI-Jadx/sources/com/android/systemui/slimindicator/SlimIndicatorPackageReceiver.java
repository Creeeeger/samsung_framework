package com.android.systemui.slimindicator;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.UserHandle;
import com.android.systemui.Dependency;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.keyguard.CustomizationProvider$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SlimIndicatorPackageReceiver extends SlimIndicatorReceiver {
    public final String TAG;

    public SlimIndicatorPackageReceiver(SlimIndicatorSettingsBackUpManager slimIndicatorSettingsBackUpManager) {
        super(slimIndicatorSettingsBackUpManager);
        this.TAG = "[QuickStar]SlimIndicatorPackageReceiver";
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String str;
        boolean z;
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if (intent.getData() != null) {
            str = intent.getData().getSchemeSpecificPart();
        } else {
            str = null;
        }
        if ("com.samsung.android.goodlock".equals(str) || "com.samsung.android.qstuner".equals(str) || "com.samsung.systemui.lockstar".equals(str)) {
            CustomizationProvider$$ExternalSyntheticOutline0.m("onReceive - action:", action, ",  pkgName: ", str, this.TAG);
        }
        if (action != null && str != null && "android.intent.action.PACKAGE_REMOVED".equals(action) && "com.samsung.android.goodlock".equals(str)) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            this.mSettingsBackUpManager.onPluginDisconnected();
        }
    }

    @Override // com.android.systemui.slimindicator.SlimIndicatorReceiver
    public final void register() {
        ((BroadcastDispatcher) Dependency.get(BroadcastDispatcher.class)).registerReceiver(this, this.mFilter, null, UserHandle.ALL);
    }

    @Override // com.android.systemui.slimindicator.SlimIndicatorReceiver
    public final void setFilter() {
        IntentFilter intentFilter = new IntentFilter();
        this.mFilter = intentFilter;
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        this.mFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        this.mFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        this.mFilter.addAction("android.intent.action.PACKAGE_RESTARTED");
    }

    @Override // com.android.systemui.slimindicator.SlimIndicatorReceiver
    public final void unregister() {
        ((BroadcastDispatcher) Dependency.get(BroadcastDispatcher.class)).unregisterReceiver(this);
    }
}
