package com.android.systemui.navigationbar.interactor;

import android.content.IntentFilter;
import com.android.systemui.broadcast.BroadcastDispatcher;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SettingsSoftResetInteractor {
    public final BroadcastDispatcher broadcastDispatcher;
    public SettingsSoftResetInteractor$addCallback$2 broadcastReceiver;
    public final IntentFilter intentFilter;

    public SettingsSoftResetInteractor(BroadcastDispatcher broadcastDispatcher) {
        this.broadcastDispatcher = broadcastDispatcher;
        IntentFilter intentFilter = new IntentFilter();
        this.intentFilter = intentFilter;
        intentFilter.addAction("com.samsung.intent.action.SETTINGS_SOFT_RESET");
    }
}
